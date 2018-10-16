import 'package:http/http.dart';
import 'dart:async';
import 'package:schools/api/vulcan/auth/signer.dart';
import 'package:schools/api/vulcan/response_models/dictonary_response.dart';
import 'package:schools/api/vulcan/uuid.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';
import 'package:schools/api/vulcan/response_models/certificate_response.dart';
import 'package:schools/api/vulcan/response_models/timetable_response.dart';
import 'package:schools/api/vulcan/response_models/students_list_response.dart';
import 'package:schools/api/vulcan/response_models/serializers.dart';

import 'dart:convert';

class VulcanAuthResponse {
  final String certPfx;
  final String certKey;
  final String endpoint;
  final String schoolSymbol;
  final int schoolId;
  final String symbol;
  final int studentId;
  final int qualifyingPeriodId;
  final String name;

  VulcanAuthResponse(
      this.certPfx,
      this.certKey,
      this.endpoint,
      this.schoolSymbol,
      this.schoolId,
      this.symbol,
      this.studentId,
      this.qualifyingPeriodId,
      this.name);
}

class BaseVulcanClient extends BaseClient {
  final String _userAgent = 'MobileUserAgent';
  final Client _inner = new Client();

  BaseVulcanClient();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _inner.send(request);
  }
}

class VulcanClient {
  final String appVersion = '18.4.1.388';
  final String routingRules =
      'https://komponenty.vulcan.net.pl/UonetPlusMobile/RoutingRules.txt';
  final BaseVulcanClient client = new BaseVulcanClient();

  Future<VulcanAuthResponse> login(
      String token, String symbol, String pin) async {
    var response = await client.get(routingRules);
    var deviceId = generateUuidv4();
    var endpoint = _getEndpointForToken(token, response.body);
    var currentTimestamp = new DateTime.now().millisecondsSinceEpoch;
    var getCertificateBody = json.encode({
      "PIN": pin,
      "TokenKey": token,
      "AppVersion": appVersion,
      "DeviceId": deviceId,
      "DeviceName": "google#pixel", // @TODO,
      "DeviceNameUser": "",
      "DeviceDescription": "",
      "DeviceSystemType": "Android",
      "DeviceSystemVersion": "8.1.0",
      "RemoteMobileTimeKey": currentTimestamp,
      "TimeKey": currentTimestamp - 1,
      "RequestId": generateUuidv4(),
      "RemoteMobileAppVersion": appVersion,
      "RemoteMobileAppName": "VULCAN-Android-ModulUcznia",
    });

    var certResponse = await client.post(
        '$endpoint/$symbol/mobile-api/Uczen.v3.UczenStart/Certyfikat',
        body: getCertificateBody,
        headers: Map.from({
          "RequestMobileType": "RegisterDevice",
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));

    CertificateResponse certData = serializers.deserializeWith(
        CertificateResponse.serializer, json.decode(certResponse.body));

    currentTimestamp = new DateTime.now().millisecondsSinceEpoch;
    var fetchStudentsBody = createEmptyVulcanRequest();

    var studentsResponse = await client.post(
        '$endpoint/$symbol/mobile-api/Uczen.v3.UczenStart/ListaUczniow',
        body: fetchStudentsBody,
        headers: Map.from({
          "RequestSignatureValue": await signVulcanRequest(
              fetchStudentsBody, certData.tokenCert.certificatePfx),
          "RequestCertificateKey": certData.tokenCert.certificateKey,
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));

    StudentsListResponse studentsList = serializers.deserializeWith(
        StudentsListResponse.serializer, json.decode(studentsResponse.body));

    final schoolSymbol = studentsList.students[0].schoolSymbol;

    return VulcanAuthResponse(
        certData.tokenCert.certificatePfx,
        certData.tokenCert.certificateKey,
        endpoint,
        schoolSymbol,
        studentsList.students[0].schoolId,
        symbol,
        studentsList.students[0].studentId,
        studentsList.students[0].qualifyingPeriodId,
        studentsList.students[0].firstName);
  }

  String _getEndpointForToken(String token, String response) {
    for (String item in response.split('\r\n')) {
      if (token.substring(0, 3) == item.split(',')[0]) {
        return item.split(',')[1];
      }
    }

    throw Exception('Cannot find proper vulcan endpoint for given token');
  }

  String createEmptyVulcanRequest() {
    var currentTimestamp = new DateTime.now().millisecondsSinceEpoch / 1000;
    JsonEncoder encoder = new JsonEncoder.withIndent('    ');
    return encoder.convert({
      "RemoteMobileTimeKey": currentTimestamp,
      "TimeKey": currentTimestamp - 1,
      "RequestId": generateUuidv4(),
      "RemoteMobileAppVersion": appVersion,
      "RemoteMobileAppName": "VULCAN-Android-ModulUcznia",
    });
  }

  Future<TimetableResponse> fetchTimetable(
      VulcanAuthState vulcanAuthState) async {
    var currentTimestamp = new DateTime.now().millisecondsSinceEpoch / 1000;
    JsonEncoder encoder = new JsonEncoder.withIndent('    ');
    var requestData = encoder.convert({
      "DataPoczatkowa": "2018-10-15",
      "DataKoncowa": "2018-10-19",
      "IdOddzial": vulcanAuthState.schoolId,
      "IdOkresKlasyfikacyjny": vulcanAuthState.qualifyingPeriodId,
      "IdUczen": vulcanAuthState.studentId,
      "RemoteMobileTimeKey": currentTimestamp,
      "TimeKey": currentTimestamp - 1,
      "RequestId": generateUuidv4(),
      "RemoteMobileAppVersion": appVersion,
      "RemoteMobileAppName": "VULCAN-Android-ModulUcznia",
    });
    var endpoint = vulcanAuthState.apiEndpoint;
    var symbol = vulcanAuthState.symbol;
    var schoolKey = vulcanAuthState.schoolKey;
    var dictonaryData = await client.post(
        '$endpoint/$symbol/$schoolKey/mobile-api/Uczen.v3.Uczen/PlanLekcjiZeZmianami',
        body: requestData,
        headers: Map.from({
          "RequestSignatureValue": await signVulcanRequest(
              requestData, vulcanAuthState.certificatePfx),
          "RequestCertificateKey": vulcanAuthState.certificateKey,
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));
  print(dictonaryData.body);
    TimetableResponse timetableResponse = serializers.deserializeWith(
        TimetableResponse.serializer, json.decode(dictonaryData.body));
    return timetableResponse;
  }

  Future<DictonaryResponse> fetchDictonary(
      VulcanAuthState vulcanAuthState) async {
    var fetchDictonaryBody = createEmptyVulcanRequest();
    var endpoint = vulcanAuthState.apiEndpoint;
    var symbol = vulcanAuthState.symbol;
    var schoolKey = vulcanAuthState.schoolKey;
    var pfx = vulcanAuthState.certificatePfx;
    var certKey = vulcanAuthState.certificateKey;
    var startLoggingBody = createEmptyVulcanRequest();
    var loggingResponse = await client.post(
        '$endpoint/$symbol/$schoolKey/mobile-api/Uczen.v3.Uczen/LogAppStart',
        body: startLoggingBody,
        headers: Map.from({
          "RequestSignatureValue":
              await signVulcanRequest(startLoggingBody, pfx),
          "RequestCertificateKey": certKey,
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));

    var dictonaryData = await client.post(
        '$endpoint/$symbol/$schoolKey/mobile-api/Uczen.v3.Uczen/Slowniki',
        body: fetchDictonaryBody,
        headers: Map.from({
          "RequestSignatureValue":
              await signVulcanRequest(fetchDictonaryBody, pfx),
          "RequestCertificateKey": certKey,
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));
    DictonaryResponse dictonaryResponse = serializers.deserializeWith(
        DictonaryResponse.serializer, json.decode(dictonaryData.body));
    return dictonaryResponse;
  }
}

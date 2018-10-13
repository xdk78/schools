import 'package:http/http.dart';
import 'dart:async';
import 'package:schools/api/vulcan/auth/signer.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';
import 'package:schools/api/vulcan/uuid.dart';
import 'package:schools/api/vulcan/response_models/certificate_response.dart';
import 'package:schools/api/vulcan/response_models/students_list_response.dart';
import 'package:schools/api/vulcan/response_models/serializers.dart';

import 'dart:convert';

class VulcanAuthResponse {
  final String certPfx;
  final String certKey;
  final String endpoint;
  final String schoolSymbol;
  final String symbol;
  final String name;

  VulcanAuthResponse(this.certPfx, this.certKey, this.endpoint,
      this.schoolSymbol, this.symbol, this.name);
}

class BaseVulcanClient extends BaseClient {
  final String _userAgent = 'MobileUserAgent';
  final Client _inner = new Client();

  BaseVulcanClient();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['user-agent'] = _userAgent;
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

    var startLoggingBody = createEmptyVulcanRequest();
    var loggingResponse = await client.post(
        '$endpoint/$symbol/$schoolSymbol/mobile-api/Uczen.v3.Uczen/LogAppStart',
        body: startLoggingBody,
        headers: Map.from({
          "RequestSignatureValue": await signVulcanRequest(
              startLoggingBody, certData.tokenCert.certificatePfx),
          "RequestCertificateKey": certData.tokenCert.certificateKey,
          "User-Agent": "MobileUserAgent",
          "Content-Type": "application/json",
        }));

    return VulcanAuthResponse(
        certData.tokenCert.certificatePfx,
        certData.tokenCert.certificateKey,
        endpoint,
        schoolSymbol,
        symbol,
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
    var currentTimestamp = new DateTime.now().millisecondsSinceEpoch;
    return json.encode({
      "RemoteMobileTimeKey": currentTimestamp,
      "TimeKey": currentTimestamp - 1,
      "RequestId": generateUuidv4(),
      "RemoteMobileAppVersion": appVersion,
      "RemoteMobileAppName": "VULCAN-Android-ModulUcznia",
    });
  }
}

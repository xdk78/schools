import 'dart:async';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:html/parser.dart' show parse;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:schools/api/librus/response_models/accounts_response.dart';
import 'package:schools/api/librus/response_models/refresh_response.dart';
import 'package:schools/api/librus/response_models/timetable_response.dart';
import 'package:schools/api/librus/response_models/serializers.dart';

class LibrusAuthResponse {
  final String accessToken;

  LibrusAuthResponse(this.accessToken);
}

class LibrusClient {
  final String baseUrl = 'https://portal.librus.pl';
  final String baseApiUrl = 'https://api.librus.pl/2.0';
  final String clientId = 'wmSyUMo8llDAs4y9tJVYY92oyZ6h4lAt7KCuy0Gv';
  Dio client;

  LibrusClient() {
    var _client = Dio(Options(headers: {'user-agent': 'LibrusMobileApp'}));
    getTemporaryDirectory()
        .then((dir) => _client.cookieJar = PersistCookieJar(dir.path));
    this.client = _client;
  }

  /// Login and get Librus Bearer access token
  Future<LibrusAuthResponse> login(String email, String password) async {
    var response = await this.client.get(
        '$baseUrl/oauth2/authorize?client_id=$clientId&redirect_uri=http://localhost/bar&response_type=code');
    var document = parse(response.data);

    // Get CSRF from HTML
    var csrfToken = document
        .querySelector('meta[name="csrf-token"][content]')
        .attributes['content'];

    // Authorize by POSTing credentials
    await client.post('$baseUrl/rodzina/login/action',
        data: json.encode({'email': email, 'password': password}),
        options: Options(headers: {
          'X-CSRF-TOKEN': csrfToken,
          'Content-Type': "application/json"
        }));

    // Get auth code by re-visiting the code URL
    // It will now redirect to localhost with auth code supplied as a parameter.
    var codeResponse = await client.get(
        '$baseUrl/oauth2/authorize?client_id=$clientId&redirect_uri=http://localhost/bar&response_type=code',
        options: Options(
            followRedirects: false, validateStatus: (status) => status < 500));

    var authCode = codeResponse.headers.value('location').split('code=')[1];

    // Exchange auth code for Librus account token
    var exchangeToken = await client.post(
      '$baseUrl/oauth2/access_token',
      data: {
        "grant_type": "authorization_code",
        "code": authCode,
        "client_id": this.clientId,
        "redirect_uri": "http://localhost/bar"
      },
      options: Options(headers: {"Content-Type": "application/json"}),
    );

    var accessToken = exchangeToken.data['access_token'];

    return LibrusAuthResponse(accessToken);
  }

  /// Get list of Librus Synergia accounts tied to provided Librus account
  Future<AccountsResponse> getAccounts(String accessToken) async {
    var accountsResponse = await this.client.get(
        '$baseUrl/api/SynergiaAccounts',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}));

    AccountsResponse response = serializers.deserializeWith(
        AccountsResponse.serializer, json.decode(accountsResponse.data));

    return response;
  }

  /// Get timetable data
  Future getTimetable(String accessToken) async {
    // TODO: get current `weekStart`
    var timetableResponse = await this.client.get(
        '$baseApiUrl/Timetables?weekStart=2018-10-22',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}));

    return timetableResponse.data;
  }

  /// Get api Root data
  Future getRoot(String accessToken) async {
    var rootResponse = await this.client.get('$baseApiUrl/Root',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}));

    return rootResponse.data;
  }

  /// Refresh `accessToken` and get new one
  Future<RefreshResponse> refreshAccessToken(
      String accessToken, String login) async {
    var refreshResponse = await this.client.get(
        '$baseUrl/api/SynergiaAccounts/fresh/$login',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}));

    RefreshResponse response = serializers.deserializeWith(
        RefreshResponse.serializer, json.decode(refreshResponse.data));

    return response;
  }
}

import 'package:http/http.dart';
import 'dart:async';

class BaseLibrusClient extends BaseClient {
  final String _userAgent = '';
  final Client _inner = new Client();

  BaseLibrusClient();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['user-agent'] = _userAgent;
    return _inner.send(request);
  }
}

class LibrusClient {
  final String baseUrl = 'https://portal.librus.pl';
  final String clientId = 'wmSyUMo8llDAs4y9tJVYY92oyZ6h4lAt7KCuy0Gv';
  final BaseLibrusClient client = new BaseLibrusClient();

  Future login(String email, String password) async {
    var response = await client.get(
        '$baseUrl/oauth2/authorize?client_id=$clientId&redirect_uri=http://localhost/bar&response_type=code');
    return response.body;
  }
}

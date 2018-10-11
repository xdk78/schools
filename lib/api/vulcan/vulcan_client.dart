import 'package:http/http.dart';
import 'dart:async';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';

class BaseVulcanClient extends BaseClient {
  final String _userAgent = '';
  final Client _inner = new Client();

  BaseVulcanClient();

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers['user-agent'] = _userAgent;
    return _inner.send(request);
  }
}

class VulcanClient {
  final String baseUrl = 'https://portal.librus.pl';
  final String clientId = 'wmSyUMo8llDAs4y9tJVYY92oyZ6h4lAt7KCuy0Gv';
  final BaseVulcanClient client = new BaseVulcanClient();
}

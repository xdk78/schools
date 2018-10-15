import 'dart:async';

import 'package:schools/api/vulcan/vulcan_client.dart';

class AuthenticateVulcanAction {
  final Completer completer;
  final String token;
  final String symbol;
  final String pin;

  AuthenticateVulcanAction(
      {Completer completer, String token, String pin, String symbol})
      : this.completer = completer ?? new Completer(),
        this.token = token,
        this.symbol = symbol,
        this.pin = pin;
}

class LoadSavedVulcanAuthState {}

class LoginFinished {}
class LoggedInAction {
  final VulcanAuthResponse authResp;
  LoggedInAction(this.authResp);
}

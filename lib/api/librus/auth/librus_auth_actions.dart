import 'dart:async';

import 'package:schools/api/librus/librus_client.dart';

class AuthenticateLibrusAction {
  final Completer completer;
  final String email;
  final String password;

  AuthenticateLibrusAction({Completer completer, String email, String password})
      : this.completer = completer ?? new Completer(),
        this.email = email,
        this.password = password;
}

class LoadSavedLibrusAuthState {}

class LoggedInAction {
  final LibrusAuthResponse authResp;
  LoggedInAction(this.authResp);
}

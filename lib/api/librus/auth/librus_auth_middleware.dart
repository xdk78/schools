import 'package:redux/redux.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:schools/api/librus/librus_client.dart';
import 'package:schools/api/librus/auth/librus_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void librusAuthMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is AuthenticateLibrusAction) {
    var client = LibrusClient();
    client.login(action.email, action.password).then((el) {
      _saveAuthState(el);
      store.dispatch(LoggedInAction(el));
      action.completer.complete();
    }, onError: (e) => print(e));
  } else if (action is LoadSavedLibrusAuthState) {
    _loadSavedAuthState().then((el) {
      store.dispatch(LoggedInAction(el));
    });
  }
  next(action);
}

Future<LibrusAuthResponse> _loadSavedAuthState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return LibrusAuthResponse(prefs.getString('accessToken'));
}

Future<LibrusAuthResponse> _saveAuthState(LibrusAuthResponse state) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('accessToken', state.accessToken);

  return state;
}

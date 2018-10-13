import 'package:redux/redux.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:schools/api/vulcan/vulcan_client.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void vulcanAuthMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is AuthenticateVulcanAction) {
    var client = VulcanClient();
    client.login(action.token, action.symbol, action.pin).then((el) {
      _saveAuthState(el);
      store.dispatch(LoggedInAction(el));
      action.completer.complete();
    }, onError: (e) => print(e));
  } else if (action is LoadSavedVulcanAuthState) {
    _loadSavedAuthState().then((el) {
      store.dispatch(LoggedInAction(el));
    });

  }
  next(action);
}

Future<VulcanAuthResponse> _loadSavedAuthState() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return VulcanAuthResponse(
    prefs.getString('certPfx'),
    prefs.getString('certKey'),
    prefs.getString('endpoint'),
    prefs.getString('schoolSymbol'),
    prefs.getString('symbol'),
    prefs.getString('name'));
}

Future<VulcanAuthResponse> _saveAuthState(VulcanAuthResponse state) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('endpoint', state.endpoint);
  prefs.setString('certKey', state.certKey);
  prefs.setString('certPfx', state.certPfx);
  prefs.setString('schoolSymbol', state.schoolSymbol);
  prefs.setString('symbol', state.symbol);
  prefs.setString('name', state.name);

  return state;
}
import 'package:redux/redux.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:schools/api/vulcan/vulcan_client.dart';
import 'package:schools/api/vulcan/state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void vulcanMiddleware(Store<AppState> store, action, NextDispatcher next) {
  var client = new VulcanClient();
  if (action is LoggedInAction) {
    client.fetchDictonary(store.state.vulcanAuthState);


  } else if (action is LoadSavedVulcanAuthState) {}
  next(action);
}

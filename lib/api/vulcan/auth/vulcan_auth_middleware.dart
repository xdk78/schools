import 'package:redux/redux.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void vulcanAuthMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is AuthenticateVulcanAction) {
    
  }
  next(action);
}
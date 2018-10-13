import 'package:redux/redux.dart';
import 'package:schools/api/librus/auth/librus_auth_state.dart';
import 'package:schools/api/librus/auth/librus_auth_actions.dart';

Reducer<LibrusAuthState> authReducer = combineReducers<LibrusAuthState>(
    [TypedReducer<LibrusAuthState, LoggedInAction>(_loggedInReducer)]);

LibrusAuthState _loggedInReducer(LibrusAuthState state, LoggedInAction action) {
  return state.rebuild((b) => b..accessToken = action.authResp.accessToken);
}

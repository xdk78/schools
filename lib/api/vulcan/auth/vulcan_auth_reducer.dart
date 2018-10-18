import 'package:redux/redux.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';

Reducer<VulcanAuthState> authReducer = combineReducers<VulcanAuthState>(
    [TypedReducer<VulcanAuthState, LoggedInAction>(_loggedInReducer)]);

VulcanAuthState _loggedInReducer(VulcanAuthState state, LoggedInAction action) {
  return state.rebuild((b) => b
    ..certificateKey = action.authResp.certKey
    ..certificatePfx = action.authResp.certPfx
    ..apiEndpoint = action.authResp.endpoint
    ..schoolKey = action.authResp.schoolSymbol
    ..qualifyingPeriodId = action.authResp.qualifyingPeriodId
    ..schoolId = action.authResp.schoolId
    ..studentId = action.authResp.studentId
    ..symbol = action.authResp.symbol
    ..name = action.authResp.name);
}

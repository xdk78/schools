import 'package:redux/redux.dart';
import 'package:schools/reducers/app_actions.dart';
import 'package:schools/reducers/app_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_reducer.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild((b) =>
      b..vulcanAuthState.replace(authReducer(state.vulcanAuthState, action)));
}

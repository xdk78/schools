import 'package:schools/reducers/app_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_reducer.dart' as vulcanAuth;
import 'package:schools/api/vulcan/reducer.dart' as vulcan;
import 'package:schools/api/librus/auth/librus_auth_reducer.dart' as librus;

AppState appReducer(AppState state, action) {
  return state.rebuild((b) => b
    ..vulcanAuthState
        .replace(vulcanAuth.authReducer(state.vulcanAuthState, action))
    ..vulcanState.replace(vulcan.vulcanReducer(state.vulcanState, action))
    ..librusAuthState
        .replace(librus.authReducer(state.librusAuthState, action)));
}

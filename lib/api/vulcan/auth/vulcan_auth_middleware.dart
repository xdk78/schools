import 'package:redux/redux.dart';
import 'package:schools/api/vulcan/vulcan_client.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void vulcanAuthMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is AuthenticateVulcanAction) {
    var client = VulcanClient();
    client.login(action.token, action.symbol, action.pin).then((el) {
      store.dispatch(LoggedInAction(el));
      action.completer.complete();
    }, onError: (e) => print(e));
  }
  next(action);
}

import 'package:redux/redux.dart';
import 'package:schools/api/librus/librus_client.dart';
import 'package:schools/api/librus/auth/librus_auth_actions.dart';
import 'package:schools/reducers/app_state.dart';

void librusAuthMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is AuthenticateLibrusAction) {
    var client = LibrusClient();
    client.login(action.email, action.password).then((el) {
      store.dispatch(LoggedInAction(el));
      action.completer.complete();
    }, onError: (e) => print(e));
  }
  next(action);
}

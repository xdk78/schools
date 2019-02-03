import 'package:redux/redux.dart';
import 'package:schools/api/librus/mappers.dart';
import 'package:schools/api/librus/librus_client.dart';
import 'package:schools/store/timetable/timetable_actions.dart';
import 'package:schools/api/librus/auth/librus_auth_actions.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/keys.dart';

void librusMiddleware(Store<AppState> store, action, NextDispatcher next) {
  var client = new LibrusClient();
  if (store.state.currentSystem == 'librus') {
    if (action is LoadTimetableAction) {
      client.getTimetable(store.state.librusAuthState.accessToken).then((el) {
        store.dispatch(mapLibrusTimetable(el, store.state));
      });
    }
  }
  next(action);
  if (action is LoggedInAction) {
    store.dispatch(LoginFinished());
    Keys.navKey.currentState.pushNamed("/timetable");
  }
}

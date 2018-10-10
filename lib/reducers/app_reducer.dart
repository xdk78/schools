import 'package:redux/redux.dart';
import 'package:schools/reducers/app_actions.dart';
import 'package:schools/reducers/app_state.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild((b) => b
    ..isLoading = loadingReducer(state.isLoading, action),
  );
}
 
Reducer<bool> loadingReducer = combineReducers<bool>([
  new TypedReducer<bool, StartLoading>(setLoading),
  new TypedReducer<bool, StopLoading>(setLoaded),
]);

bool setLoading(bool state, action) {
  return true;
}

bool setLoaded(bool state, action) {
  return false;
}
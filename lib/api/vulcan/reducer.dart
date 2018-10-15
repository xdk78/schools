import 'package:redux/redux.dart';
import 'package:schools/api/vulcan/state.dart';
import 'package:schools/api/vulcan/actions.dart';

VulcanState vulcanReducer(VulcanState state, action) {
  return state.rebuild((b) => b
    ..dictonaryState.replace(dictonaryReducer(state.dictonaryState, action)));
}

Reducer<VulcanDictonaryState> dictonaryReducer =
    combineReducers<VulcanDictonaryState>([
  TypedReducer<VulcanDictonaryState, SetDictonaryAction>(_setDictonary)
]);

VulcanDictonaryState _setDictonary(
    VulcanDictonaryState state, SetDictonaryAction action) {
  return state.rebuild((b) => b);
}

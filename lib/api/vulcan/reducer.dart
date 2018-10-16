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
  return state.rebuild((b) => b
    ..attendanceCategories
        .replace(action.dictResponse.data.attendanceCategories)
    ..teachers.replace(action.dictResponse.data.teachers)
    ..workers.replace(action.dictResponse.data.workers)
    ..attendanceTypes.replace(action.dictResponse.data.attendanceTypes)
    ..lessonTimes.replace(action.dictResponse.data.lessonTimes)
    ..markCategories.replace(action.dictResponse.data.markCategories)
    ..subjects.replace(action.dictResponse.data.subjects)
    ..warningCategories.replace(action.dictResponse.data.warningCategories)
    ..synced = true);
}

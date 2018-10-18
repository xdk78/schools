import 'package:redux/redux.dart';
import 'package:schools/store/timetable/timetable_state.dart';
import 'package:schools/store/timetable/timetable_actions.dart';
import 'package:schools/api/vulcan/actions.dart';

Reducer<TimetableState> timetableReducer = combineReducers<TimetableState>(
    [TypedReducer<TimetableState, SetTimetableAction>(_setTimetable)]);

TimetableState _setTimetable(TimetableState state, SetTimetableAction action) {
  return state.rebuild((b) => b
    ..monday.replace(action.monday)
    ..tuesday.replace(action.monday)
    ..wednesday.replace(action.monday)
    ..thursday.replace(action.monday)
    ..friday.replace(action.monday));
}

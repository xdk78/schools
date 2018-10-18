import 'package:redux/redux.dart';
import 'package:schools/store/timetable/timetable_state.dart';
import 'package:schools/store/timetable/timetable_actions.dart';

Reducer<TimetableState> timetableReducer = combineReducers<TimetableState>(
    [TypedReducer<TimetableState, SetTimetableAction>(_setTimetable)]);

TimetableState _setTimetable(TimetableState state, SetTimetableAction action) {
  return state.rebuild((b) => b
    ..monday.replace(action.monday)
    ..tuesday.replace(action.tuesday)
    ..wednesday.replace(action.wednesday)
    ..thursday.replace(action.thursday)
    ..friday.replace(action.friday));
}

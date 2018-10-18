import 'package:redux/redux.dart';
import 'package:schools/api/vulcan/vulcan_client.dart';
import 'package:schools/api/vulcan/response_models/timetable_response.dart';
import 'package:schools/models/lesson.dart';
import 'package:built_collection/built_collection.dart';
import 'package:schools/store/timetable/timetable_actions.dart';

SetTimetableAction mapVulcanTimetable(TimetableResponse resp) {
  BuiltList<Lesson> monday = BuiltList();
  BuiltList<Lesson> tuesday = BuiltList();
  BuiltList<Lesson> wednesday = BuiltList();
  BuiltList<Lesson> thursday = BuiltList();
  BuiltList<Lesson> friday = BuiltList();

  for (var day in resp.days.where((el) => el.isUsersPlan)) {
    var lesson = Lesson(day.lessonNumber, day.subjectName, day.classroom);
    switch(DateTime.fromMillisecondsSinceEpoch(day.dayUnix * 1000).weekday) {
      case DateTime.monday:
        monday = monday.rebuild((b) => b.add(lesson));
        break;
    case DateTime.tuesday:
        tuesday = tuesday.rebuild((b) => b.add(lesson));
        break;
      case DateTime.wednesday:
        wednesday = wednesday.rebuild((b) => b.add(lesson));
        break;
      case DateTime.thursday:
        thursday = thursday.rebuild((b) => b.add(lesson));
        break;
      case DateTime.friday:
        friday = friday.rebuild((b) => b.add(lesson));
        break;
      
    }
  }

  return SetTimetableAction(monday, tuesday, wednesday, thursday, friday);
}
import 'package:built_collection/built_collection.dart';
import 'package:schools/models/lesson.dart';

class SetTimetableAction {
  BuiltList<Lesson> monday;
  BuiltList<Lesson> tuesday;
  BuiltList<Lesson> wednesday;
  BuiltList<Lesson> thursday;
  BuiltList<Lesson> friday;

  SetTimetableAction(
      this.monday, this.tuesday, this.wednesday, this.thursday, this.friday);
}

class LoadTimetableAction {
// @TODO Page, date etc
}

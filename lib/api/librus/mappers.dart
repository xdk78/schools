import 'package:schools/api/librus/response_models/serializers.dart';
import 'package:schools/api/librus/response_models/timetable_response.dart';
import 'package:schools/models/lesson.dart';
import 'package:built_collection/built_collection.dart';
import 'package:schools/store/timetable/timetable_actions.dart';
import 'package:schools/store/app_state.dart';
import 'dart:convert';

SetTimetableAction mapLibrusTimetable(dynamic resp, AppState state) {
  BuiltList<Lesson> monday = BuiltList();
  BuiltList<Lesson> tuesday = BuiltList();
  BuiltList<Lesson> wednesday = BuiltList();
  BuiltList<Lesson> thursday = BuiltList();
  BuiltList<Lesson> friday = BuiltList();

  Map<String, dynamic> data = json.decode(resp);
  var timetable = data['Timetable'];

  LessonsResponse mon = serializers.deserializeWith(
      LessonsResponse.serializer, json.decode(timetable['2018-10-22'][1]));

  var lesson = Lesson(mon.lessonNumber, mon.subject.name, 'classroom',
      mon.teacher.firstName + " " + mon.teacher.lastName);

  monday = monday.rebuild((b) => b.add(lesson));
  return SetTimetableAction(monday, tuesday, wednesday, thursday, friday);
}

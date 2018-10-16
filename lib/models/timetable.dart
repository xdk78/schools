import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'timetable.g.dart';

abstract class Timetable
    implements Built<Timetable, TimetableBuilder> {
  BuiltList<Lesson> get monday;
  BuiltList<Lesson> get thuesday;
  BuiltList<Lesson> get wednesday;
  BuiltList<Lesson> get thursday;
  BuiltList<Lesson> get friday;


  factory Timetable([updates(TimetableBuilder b)]) =
      _$Timetable;

  Timetable._();
  static Serializer<Timetable> get serializer =>
      _$timetableSerializer;
}

abstract class Lesson implements Built<Lesson, LessonBuilder> {
  Lesson._();

  int get lessonNumber;
  String get subject;
  String get classroom;

  factory Lesson([updates(LessonBuilder b)]) = _$Lesson;
  static Serializer<Lesson> get serializer => _$lessonSerializer;
}

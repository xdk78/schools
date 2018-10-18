import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lesson.g.dart';

abstract class Lesson implements Built<Lesson, LessonBuilder> {
  Lesson._();

  @nullable
  num get lessonNumber;

  @nullable
  String get subject;

  @nullable
  String get teacherName;

  @nullable
  String get classroom;

  factory Lesson(
      num lessonNumber, String subject, String classroom, String teacherName) {
    return _$Lesson._(
      lessonNumber: lessonNumber,
      subject: subject,
      classroom: classroom,
      teacherName: teacherName,
    );
  }
  static Serializer<Lesson> get serializer => _$lessonSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'lesson.g.dart';

abstract class Lesson implements Built<Lesson, LessonBuilder> {
  Lesson._();

  @nullable
  int get lessonNumber;

  @nullable
  String get subject;
  @nullable
  String get classroom;


  factory Lesson(int lessonNumber, String subject, String classroom) {
    return _$Lesson._(
      lessonNumber: lessonNumber,
      subject: subject,
      classroom: classroom,
    );
  }  static Serializer<Lesson> get serializer => _$lessonSerializer;
}

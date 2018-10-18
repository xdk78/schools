import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lesson_time_dictonary.g.dart';

abstract class LessonTimeDictonary
    implements Built<LessonTimeDictonary, LessonTimeDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  num get id;

  @BuiltValueField(wireName: "Numer")
  num get number;

  @BuiltValueField(wireName: "Poczatek")
  num get start;

  @BuiltValueField(wireName: "PoczatekTekst")
  String get startText;

  @BuiltValueField(wireName: "Koniec")
  num get end;

  @BuiltValueField(wireName: "KoniecTekst")
  String get endText;

  LessonTimeDictonary._();
  factory LessonTimeDictonary([updates(LessonTimeDictonaryBuilder b)]) =
      _$LessonTimeDictonary;

  static Serializer<LessonTimeDictonary> get serializer =>
      _$lessonTimeDictonarySerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lesson_time_dictonary.g.dart';

abstract class LessonTimeDictonary
    implements Built<LessonTimeDictonary, LessonTimeDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  int get id;

  @BuiltValueField(wireName: "Numer")
  int get number;

  @BuiltValueField(wireName: "Poczatek")
  int get start;

  @BuiltValueField(wireName: "PoczatekTekst")
  String get startText;

  @BuiltValueField(wireName: "Koniec")
  int get end;

  @BuiltValueField(wireName: "KoniecTekst")
  String get endText;

  LessonTimeDictonary._();
  factory LessonTimeDictonary([updates(LessonTimeDictonaryBuilder b)]) =
      _$LessonTimeDictonary;

  static Serializer<LessonTimeDictonary> get serializer =>
      _$lessonTimeDictonarySerializer;
}

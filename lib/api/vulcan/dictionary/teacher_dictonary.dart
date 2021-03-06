import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'teacher_dictonary.g.dart';

abstract class TeacherDictonary
    implements Built<TeacherDictonary, TeacherDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  num get id;

  @BuiltValueField(wireName: "Imie")
  String get name;

  @BuiltValueField(wireName: "Nazwisko")
  String get surname;

  @BuiltValueField(wireName: "Kod")
  String get code;

  @BuiltValueField(wireName: "Aktywny")
  bool get active;

  @BuiltValueField(wireName: "Nauczyciel")
  bool get isTeacher;

  @BuiltValueField(wireName: "LoginId")
  num get loginId;

  TeacherDictonary._();
  factory TeacherDictonary([updates(TeacherDictonaryBuilder b)]) =
      _$TeacherDictonary;

  static Serializer<TeacherDictonary> get serializer =>
      _$teacherDictonarySerializer;
}

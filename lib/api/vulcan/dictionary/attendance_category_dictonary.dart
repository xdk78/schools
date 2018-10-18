import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'attendance_category_dictonary.g.dart';

abstract class AttendanceCategoryDictonary
    implements
        Built<AttendanceCategoryDictonary, AttendanceCategoryDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  int get id;

  @BuiltValueField(wireName: "Nazwa")
  String get name;

  @BuiltValueField(wireName: "Pozycja")
  int get position;

  @BuiltValueField(wireName: "Obecnosc")
  bool get presence;

  @BuiltValueField(wireName: "Nieobecnosc")
  bool get absence;

  @BuiltValueField(wireName: "Zwolnienie")
  bool get execusal;

  @BuiltValueField(wireName: "Spoznienie")
  bool get late;

  @BuiltValueField(wireName: "Usprawiedliwione")
  bool get justification;

  @BuiltValueField(wireName: "Usuniete")
  bool get deleted;

  AttendanceCategoryDictonary._();
  factory AttendanceCategoryDictonary(
          [updates(AttendanceCategoryDictonaryBuilder b)]) =
      _$AttendanceCategoryDictonary;

  static Serializer<AttendanceCategoryDictonary> get serializer =>
      _$attendanceCategoryDictonarySerializer;
}

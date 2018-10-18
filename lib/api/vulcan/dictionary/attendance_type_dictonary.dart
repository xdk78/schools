import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attendance_type_dictonary.g.dart';

abstract class AttendanceTypeDictonary
    implements Built<AttendanceTypeDictonary, AttendanceTypeDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  int get id;

  @BuiltValueField(wireName: "Nazwa")
  String get name;

  @BuiltValueField(wireName: "Symbol")
  String get symbol;

  @BuiltValueField(wireName: "Aktywny")
  bool get active;

  @BuiltValueField(wireName: "WpisDomyslny")
  bool get defaultEntry;

  @BuiltValueField(wireName: "IdKategoriaFrek")
  int get attendanceCategoryId;

  AttendanceTypeDictonary._();
  factory AttendanceTypeDictonary([updates(AttendanceTypeDictonaryBuilder b)]) =
      _$AttendanceTypeDictonary;

  static Serializer<AttendanceTypeDictonary> get serializer =>
      _$attendanceTypeDictonarySerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/vulcan/dictionary/teacher_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/worker_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/subject_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/warning_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/attendance_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/attendance_type_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/lesson_time_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/mark_category_dictonary.dart';

part 'dictonary_response.g.dart';

abstract class DictonaryResponse
    implements Built<DictonaryResponse, DictonaryResponseBuilder> {
  @BuiltValueField(wireName: 'Data')
  DictonaryData get data;

  factory DictonaryResponse([updates(DictonaryResponseBuilder b)]) =
      _$DictonaryResponse;

  DictonaryResponse._();
  static Serializer<DictonaryResponse> get serializer =>
      _$dictonaryResponseSerializer;
}

abstract class DictonaryData implements Built<DictonaryData, DictonaryDataBuilder> {
  DictonaryData._();

  @BuiltValueField(wireName: 'Nauczyciele')
  BuiltList<TeacherDictonary> get teachers;

  @BuiltValueField(wireName: 'Pracownicy')
  BuiltList<WorkerDictonary> get workers;

  @BuiltValueField(wireName: 'Przedmioty')
  BuiltList<SubjectDictonary> get subjects;

  @BuiltValueField(wireName: 'PoryLekcji')
  BuiltList<LessonTimeDictonary> get lessonTimes;

  @BuiltValueField(wireName: 'KategorieOcen')
  BuiltList<MarkCategoryDictonary> get markCategories;

  @BuiltValueField(wireName: 'KategorieUwag')
  BuiltList<WarningCategoryDictonary> get warningCategories;

  @BuiltValueField(wireName: 'KategorieFrekwencji')
  BuiltList<AttendanceCategoryDictonary> get attendanceCategories;

  @BuiltValueField(wireName: 'TypyFrekwencji')
  BuiltList<AttendanceTypeDictonary> get attendanceTypes;
  factory DictonaryData([updates(DictonaryDataBuilder b)]) = _$DictonaryData;
  static Serializer<DictonaryData> get serializer => _$dictonaryDataSerializer;
}

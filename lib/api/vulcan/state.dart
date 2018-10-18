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

part 'state.g.dart';

abstract class VulcanState implements Built<VulcanState, VulcanStateBuilder> {
  VulcanDictonaryState get dictonaryState;

  factory VulcanState() {
    return _$VulcanState._(
      dictonaryState: VulcanDictonaryState.initialState(),
    );
  }

  VulcanState._();
  static Serializer<VulcanState> get serializer => _$vulcanStateSerializer;
}

abstract class VulcanDictonaryState
    implements Built<VulcanDictonaryState, VulcanDictonaryStateBuilder> {
  BuiltList<TeacherDictonary> get teachers;
  BuiltList<WorkerDictonary> get workers;
  BuiltList<SubjectDictonary> get subjects;
  BuiltList<LessonTimeDictonary> get lessonTimes;
  BuiltList<MarkCategoryDictonary> get markCategories;
  BuiltList<WarningCategoryDictonary> get warningCategories;
  BuiltList<AttendanceCategoryDictonary> get attendanceCategories;
  BuiltList<AttendanceTypeDictonary> get attendanceTypes;
  bool get synced;

  factory VulcanDictonaryState() {
    return _$VulcanDictonaryState._();
  }
  factory VulcanDictonaryState.initialState() {
    return _$VulcanDictonaryState._(
      teachers: BuiltList.of([]),
      workers: BuiltList.of([]),
      subjects: BuiltList.of([]),
      lessonTimes: BuiltList.of([]),
      markCategories: BuiltList.of([]),
      warningCategories: BuiltList.of([]),
      attendanceCategories: BuiltList.of([]),
      attendanceTypes: BuiltList.of([]),
      synced: false,
    );
  }
  VulcanDictonaryState._();
  static Serializer<VulcanDictonaryState> get serializer =>
      _$vulcanDictonaryStateSerializer;
}

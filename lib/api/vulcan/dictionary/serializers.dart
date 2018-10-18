import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/vulcan/dictionary/attendance_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/attendance_type_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/lesson_time_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/mark_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/subject_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/teacher_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/warning_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/worker_dictonary.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AttendanceCategoryDictonary,
  AttendanceTypeDictonary,
  LessonTimeDictonary,
  MarkCategoryDictonary,
  SubjectDictonary,
  TeacherDictonary,
  WarningCategoryDictonary,
  WorkerDictonary,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/vulcan/response_models/certificate_response.dart';
import 'package:schools/api/vulcan/response_models/students_list_response.dart';
import 'package:schools/api/vulcan/response_models/dictonary_response.dart';
import 'package:schools/api/vulcan/dictionary/teacher_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/worker_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/subject_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/warning_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/attendance_category_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/attendance_type_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/lesson_time_dictonary.dart';
import 'package:schools/api/vulcan/dictionary/mark_category_dictonary.dart';
import 'package:schools/api/vulcan/response_models/timetable_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  CertificateResponse,
  StudentsListResponse,
  TimetableResponse,
  DictonaryResponse,
  Data,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

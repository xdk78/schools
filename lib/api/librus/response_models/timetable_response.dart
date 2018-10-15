import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timetable_response.g.dart';

abstract class TimetableResponse
    implements Built<TimetableResponse, TimetableResponseBuilder> {
  @BuiltValueField(wireName: 'Lessons')
  BuiltList<LessonsResponse> get lessons;

  TimetableResponse._();
  factory TimetableResponse([updates(TimetableResponseBuilder b)]) =
      _$TimetableResponse;

  static Serializer<TimetableResponse> get serializer =>
      _$timetableResponseSerializer;
}

abstract class LessonsResponse
    implements Built<LessonsResponse, LessonsResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  num get id;

  @BuiltValueField(wireName: 'LessonNo')
  num get lessonNumber;

  @BuiltValueField(wireName: 'Subject')
  SubjectResponse get subject;

  @BuiltValueField(wireName: 'Teacher')
  TeacherResponse get teacher;

  @BuiltValueField(wireName: 'IsSubstitutionClass')
  bool get isSubstitutionClass;

  @BuiltValueField(wireName: 'IsCanceled')
  bool get isCanceled;

  @BuiltValueField(wireName: 'OrgTeacher')
  TeacherResponse get orgTeacher;

  @BuiltValueField(wireName: 'OrgSubject')
  SubjectResponse get orgSubject;

  @BuiltValueField(wireName: 'Date')
  String get date;

  @BuiltValueField(wireName: 'HourFrom')
  String get hourFrom;

  @BuiltValueField(wireName: 'HourTo')
  String get hourTo;

  LessonsResponse._();
  factory LessonsResponse([updates(LessonsResponseBuilder b)]) =
      _$LessonsResponse;

  static Serializer<LessonsResponse> get serializer =>
      _$lessonsResponseSerializer;
}

abstract class SubjectResponse
    implements Built<SubjectResponse, SubjectResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Name')
  String get name;

  @BuiltValueField(wireName: 'Average')
  String get average;

  SubjectResponse._();
  factory SubjectResponse([updates(SubjectResponseBuilder b)]) =
      _$SubjectResponse;

  static Serializer<SubjectResponse> get serializer =>
      _$subjectResponseSerializer;
}

abstract class TeacherResponse
    implements Built<TeacherResponse, TeacherResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'FirstName')
  String get firstName;

  @BuiltValueField(wireName: 'LastName')
  String get lastName;

  TeacherResponse._();
  factory TeacherResponse([updates(TeacherResponseBuilder b)]) =
      _$TeacherResponse;

  static Serializer<TeacherResponse> get serializer =>
      _$teacherResponseSerializer;
}

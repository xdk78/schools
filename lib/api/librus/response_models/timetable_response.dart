import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timetable_response.g.dart';

abstract class LessonsResponse
    implements Built<LessonsResponse, LessonsResponseBuilder> {
  @BuiltValueField(wireName: 'Lesson')
  SubjectResponse get lesson;

  @BuiltValueField(wireName: 'Classroom')
  ClassroomResponse get classroom;

  @BuiltValueField(wireName: 'DateFrom')
  String get dateFrom;

  @BuiltValueField(wireName: 'DateTo')
  String get dateTo;

  @BuiltValueField(wireName: 'LessonNo')
  num get lessonNumber;

  @BuiltValueField(wireName: 'TimetableEntry')
  TimetableEntryResponse get timetableEntry;

  @BuiltValueField(wireName: 'DayNo')
  String get dayNumber;

  @BuiltValueField(wireName: 'Subject')
  SubjectResponse get subject;

  @BuiltValueField(wireName: 'Teacher')
  TeacherResponse get teacher;

  @BuiltValueField(wireName: 'Class')
  ClassResponse get classres;

  @BuiltValueField(wireName: 'IsSubstitutionClass')
  bool get isSubstitutionClass;

  @BuiltValueField(wireName: 'IsCanceled')
  bool get isCanceled;

  @BuiltValueField(wireName: 'SubstitutionNote')
  Object get substitutionNote;

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

abstract class LessonResponse
    implements Built<LessonResponse, LessonResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Url')
  String get url;
  LessonResponse._();
  factory LessonResponse([updates(LessonResponseBuilder b)]) = _$LessonResponse;

  static Serializer<LessonResponse> get serializer =>
      _$lessonResponseSerializer;
}

abstract class ClassroomResponse
    implements Built<ClassroomResponse, ClassroomResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Url')
  String get url;

  ClassroomResponse._();
  factory ClassroomResponse([updates(ClassroomResponseBuilder b)]) =
      _$ClassroomResponse;

  static Serializer<ClassroomResponse> get serializer =>
      _$classroomResponseSerializer;
}

abstract class TimetableEntryResponse
    implements Built<TimetableEntryResponse, TimetableEntryResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Url')
  String get url;

  TimetableEntryResponse._();
  factory TimetableEntryResponse([updates(TimetableEntryResponseBuilder b)]) =
      _$TimetableEntryResponse;

  static Serializer<TimetableEntryResponse> get serializer =>
      _$timetableEntryResponseSerializer;
}

abstract class SubjectResponse
    implements Built<SubjectResponse, SubjectResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Name')
  String get name;

  @BuiltValueField(wireName: 'Short')
  String get short;

  @BuiltValueField(wireName: 'Url')
  String get url;

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

  @BuiltValueField(wireName: 'Url')
  String get url;

  TeacherResponse._();
  factory TeacherResponse([updates(TeacherResponseBuilder b)]) =
      _$TeacherResponse;

  static Serializer<TeacherResponse> get serializer =>
      _$teacherResponseSerializer;
}

abstract class ClassResponse
    implements Built<ClassResponse, ClassResponseBuilder> {
  @BuiltValueField(wireName: 'Id')
  String get id;

  @BuiltValueField(wireName: 'Url')
  String get url;

  ClassResponse._();
  factory ClassResponse([updates(ClassResponseBuilder b)]) = _$ClassResponse;

  static Serializer<ClassResponse> get serializer => _$classResponseSerializer;
}

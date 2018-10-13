import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timetable_response.g.dart';

abstract class LibrusTimetableResponse
    implements Built<LibrusTimetableResponse, LibrusTimetableResponseBuilder> {
  String get id;

  @BuiltValueField(wireName: 'LessonNo')
  num get lessonNumber;

  @nullable
  BuiltMap<String, LibrusSubjectResponse> get subject;

  @nullable
  BuiltMap<String, LibrusTeacherResponse> get teacher;

  @BuiltValueField(wireName: 'IsSubstitutionClass')
  bool get substitution;

  @BuiltValueField(wireName: 'IsCanceled')
  bool get canceled;

  @nullable
  BuiltMap<String, LibrusTeacherResponse> get orgTeacher;

  @nullable
  BuiltMap<String, LibrusSubjectResponse> get orgSubject;

  DateTime get date;

  DateTime get hourFrom;

  DateTime get hourTo;

  LibrusTimetableResponse._();
  factory LibrusTimetableResponse([updates(LibrusTimetableResponseBuilder b)]) =
      _$LibrusTimetableResponse;

  static Serializer<LibrusTimetableResponse> get serializer =>
      _$librusTimetableResponseSerializer;
}

abstract class LibrusSubjectResponse
    implements Built<LibrusSubjectResponse, LibrusSubjectResponseBuilder> {
  String get id;
  String get name;
  String get average;

  LibrusSubjectResponse._();
  factory LibrusSubjectResponse([updates(LibrusSubjectResponseBuilder b)]) =
      _$LibrusSubjectResponse;

  static Serializer<LibrusSubjectResponse> get serializer =>
      _$librusSubjectResponseSerializer;
}

abstract class LibrusTeacherResponse
    implements Built<LibrusTeacherResponse, LibrusTeacherResponseBuilder> {
  String get id;
  String get firstName;
  String get lastName;

  LibrusTeacherResponse._();
  factory LibrusTeacherResponse([updates(LibrusTeacherResponseBuilder b)]) =
      _$LibrusTeacherResponse;

  static Serializer<LibrusTeacherResponse> get serializer =>
      _$librusTeacherResponseSerializer;
}

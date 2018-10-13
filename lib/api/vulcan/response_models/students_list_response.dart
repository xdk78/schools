import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'students_list_response.g.dart';

abstract class StudentsListResponse
    implements Built<StudentsListResponse, StudentsListResponseBuilder> {
  @BuiltValueField(wireName: 'Data')
  BuiltList<Data> get students;

  factory StudentsListResponse([updates(StudentsListResponseBuilder b)]) =
      _$StudentsListResponse;

  StudentsListResponse._();
  static Serializer<StudentsListResponse> get serializer =>
      _$studentsListResponseSerializer;
}

abstract class Data implements Built<Data, DataBuilder> {
  Data._();

  @BuiltValueField(wireName: 'JednostkaSprawozdawczaSymbol')
  String get schoolSymbol;

  @BuiltValueField(wireName: 'Imie')
  String get firstName;

  @BuiltValueField(wireName: 'Imie2')
  String get lastName;

  @BuiltValueField(wireName: 'Nazwisko')
  String get surname;

  factory Data([updates(DataBuilder b)]) = _$Data;
  static Serializer<Data> get serializer => _$dataSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'timetable_response.g.dart';

abstract class TimetableResponse
    implements Built<TimetableResponse, TimetableResponseBuilder> {
  @BuiltValueField(wireName: 'Data')
  BuiltList<TimetableData> get days;

  factory TimetableResponse([updates(TimetableResponseBuilder b)]) =
      _$TimetableResponse;

  TimetableResponse._();
  static Serializer<TimetableResponse> get serializer =>
      _$timetableResponseSerializer;
}

abstract class TimetableData implements Built<TimetableData, TimetableDataBuilder> {
  TimetableData._();

  @BuiltValueField(wireName: 'DzienTekst')
  String get dayText;

  @nullable
  @BuiltValueField(wireName: 'PodzialSkrot')
  String get subGroupText;

  @BuiltValueField(wireName: 'Dzien')
  int get dayUnix;

  @BuiltValueField(wireName: 'NumerLekcji')
  int get lessonNumber;

  @BuiltValueField(wireName: 'IdPoraLekcji')
  int get lessonTimeId;

  @BuiltValueField(wireName: 'PrzedmiotNazwa')
  String get subjectName;

  @BuiltValueField(wireName: 'Sala')
  String get classroom;

  @BuiltValueField(wireName: 'AdnotacjaOZmianie')
  String get changeAdnotation;
  factory TimetableData([updates(TimetableDataBuilder b)]) = _$TimetableData;
  static Serializer<TimetableData> get serializer => _$timetableDataSerializer;
}

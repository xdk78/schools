import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mark_category_dictonary.g.dart';

abstract class MarkCategoryDictonary
    implements Built<MarkCategoryDictonary, MarkCategoryDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  num get id;

  @BuiltValueField(wireName: "Kod")
  String get code;

  @BuiltValueField(wireName: "Nazwa")
  String get name;

  MarkCategoryDictonary._();
  factory MarkCategoryDictonary([updates(MarkCategoryDictonaryBuilder b)]) =
      _$MarkCategoryDictonary;

  static Serializer<MarkCategoryDictonary> get serializer =>
      _$markCategoryDictonarySerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warning_category_dictonary.g.dart';

abstract class WarningCategoryDictonary
    implements
        Built<WarningCategoryDictonary, WarningCategoryDictonaryBuilder> {
  @BuiltValueField(wireName: "Id")
  num get id;

  @BuiltValueField(wireName: "Aktywny")
  bool get active;

  WarningCategoryDictonary._();
  factory WarningCategoryDictonary(
          [updates(WarningCategoryDictonaryBuilder b)]) =
      _$WarningCategoryDictonary;

  static Serializer<WarningCategoryDictonary> get serializer =>
      _$warningCategoryDictonarySerializer;
}

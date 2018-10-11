import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vulcan_auth_state.g.dart';

abstract class VulcanAuthState
    implements Built<VulcanAuthState, VulcanAuthStateBuilder> {
  @nullable
  String get certificatePfx;

  @nullable
  String get certificateKey;

  @nullable
  String get apiEndpoint;

  @nullable
  String get schoolKey;

  @nullable
  String get symbol;

  @nullable
  String get name;
  factory VulcanAuthState() {
    return _$VulcanAuthState._();
  }

  VulcanAuthState._();
  static Serializer<VulcanAuthState> get serializer =>
      _$vulcanAuthStateSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vulcan_auth_state.g.dart';

abstract class VulcanAuthState implements Built<VulcanAuthState, VulcanAuthStateBuilder> {
  String get deviceId;
  String get deviceName;
  String get certificatePfx;
  String get certificateKey;
  String get apiEndpoint;
  String get email;
  String get schoolKey;
  
  factory VulcanAuthState() {
    return _$VulcanAuthState._();
  }

  VulcanAuthState._();
  static Serializer<VulcanAuthState> get serializer => _$vulcanAuthStateSerializer;
}
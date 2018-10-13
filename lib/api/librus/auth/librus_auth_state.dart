import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'librus_auth_state.g.dart';

abstract class LibrusAuthState
    implements Built<LibrusAuthState, LibrusAuthStateBuilder> {
  @nullable
  String get accessToken;

  factory LibrusAuthState() {
    return _$LibrusAuthState._();
  }

  LibrusAuthState._();
  static Serializer<LibrusAuthState> get serializer =>
      _$librusAuthStateSerializer;
}

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_response.g.dart';

abstract class RefreshResponse
    implements Built<RefreshResponse, RefreshResponseBuilder> {
  num get id;
  String get group;
  String get accessToken;
  String get login;
  String get studentName;
  String get scopes;
  String get state;

  RefreshResponse._();
  factory RefreshResponse([updates(RefreshResponseBuilder b)]) =
      _$RefreshResponse;

  static Serializer<RefreshResponse> get serializer =>
      _$refreshResponseSerializer;
}

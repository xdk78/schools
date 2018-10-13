import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'accounts_response.g.dart';

abstract class LibrusAccountsResponse
    implements Built<LibrusAccountsResponse, LibrusAccountsResponseBuilder> {
  num get lastModification;
  BuiltList<LibrusAccountResponse> get accounts;

  LibrusAccountsResponse._();
  factory LibrusAccountsResponse([updates(LibrusAccountsResponseBuilder b)]) =
      _$LibrusAccountsResponse;

  static Serializer<LibrusAccountsResponse> get serializer =>
      _$librusAccountsResponseSerializer;
}

abstract class LibrusAccountResponse
    implements Built<LibrusAccountResponse, LibrusAccountResponseBuilder> {
  String get id;
  String get group;
  String get accessToken;
  String get login;
  String get studentName;

  LibrusAccountResponse._();
  factory LibrusAccountResponse([updates(LibrusAccountResponseBuilder b)]) =
      _$LibrusAccountResponse;

  static Serializer<LibrusAccountResponse> get serializer =>
      _$librusAccountResponseSerializer;
}

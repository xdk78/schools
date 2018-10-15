import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'accounts_response.g.dart';

abstract class AccountsResponse
    implements Built<AccountsResponse, AccountsResponseBuilder> {
  num get lastModification;
  BuiltList<AccountResponse> get accounts;

  AccountsResponse._();
  factory AccountsResponse([updates(AccountsResponseBuilder b)]) =
      _$AccountsResponse;

  static Serializer<AccountsResponse> get serializer =>
      _$accountsResponseSerializer;
}

abstract class AccountResponse
    implements Built<AccountResponse, AccountResponseBuilder> {
  String get id;
  String get group;
  String get accessToken;
  String get login;
  String get studentName;

  AccountResponse._();
  factory AccountResponse([updates(AccountResponseBuilder b)]) =
      _$AccountResponse;

  static Serializer<AccountResponse> get serializer =>
      _$accountResponseSerializer;
}

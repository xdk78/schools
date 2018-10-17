// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<AccountsResponse> _$accountsResponseSerializer =
    new _$AccountsResponseSerializer();
Serializer<AccountResponse> _$accountResponseSerializer =
    new _$AccountResponseSerializer();

class _$AccountsResponseSerializer
    implements StructuredSerializer<AccountsResponse> {
  @override
  final Iterable<Type> types = const [AccountsResponse, _$AccountsResponse];
  @override
  final String wireName = 'AccountsResponse';

  @override
  Iterable serialize(Serializers serializers, AccountsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lastModification',
      serializers.serialize(object.lastModification,
          specifiedType: const FullType(num)),
      'accounts',
      serializers.serialize(object.accounts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AccountResponse)])),
    ];

    return result;
  }

  @override
  AccountsResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lastModification':
          result.lastModification = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'accounts':
          result.accounts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AccountResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AccountResponseSerializer
    implements StructuredSerializer<AccountResponse> {
  @override
  final Iterable<Type> types = const [AccountResponse, _$AccountResponse];
  @override
  final String wireName = 'AccountResponse';

  @override
  Iterable serialize(Serializers serializers, AccountResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'group',
      serializers.serialize(object.group,
          specifiedType: const FullType(String)),
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(String)),
      'studentName',
      serializers.serialize(object.studentName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AccountResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'studentName':
          result.studentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountsResponse extends AccountsResponse {
  @override
  final num lastModification;
  @override
  final BuiltList<AccountResponse> accounts;

  factory _$AccountsResponse([void updates(AccountsResponseBuilder b)]) =>
      (new AccountsResponseBuilder()..update(updates)).build();

  _$AccountsResponse._({this.lastModification, this.accounts}) : super._() {
    if (lastModification == null) {
      throw new BuiltValueNullFieldError(
          'AccountsResponse', 'lastModification');
    }
    if (accounts == null) {
      throw new BuiltValueNullFieldError('AccountsResponse', 'accounts');
    }
  }

  @override
  AccountsResponse rebuild(void updates(AccountsResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountsResponseBuilder toBuilder() =>
      new AccountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountsResponse &&
        lastModification == other.lastModification &&
        accounts == other.accounts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lastModification.hashCode), accounts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountsResponse')
          ..add('lastModification', lastModification)
          ..add('accounts', accounts))
        .toString();
  }
}

class AccountsResponseBuilder
    implements Builder<AccountsResponse, AccountsResponseBuilder> {
  _$AccountsResponse _$v;

  num _lastModification;
  num get lastModification => _$this._lastModification;
  set lastModification(num lastModification) =>
      _$this._lastModification = lastModification;

  ListBuilder<AccountResponse> _accounts;
  ListBuilder<AccountResponse> get accounts =>
      _$this._accounts ??= new ListBuilder<AccountResponse>();
  set accounts(ListBuilder<AccountResponse> accounts) =>
      _$this._accounts = accounts;

  AccountsResponseBuilder();

  AccountsResponseBuilder get _$this {
    if (_$v != null) {
      _lastModification = _$v.lastModification;
      _accounts = _$v.accounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountsResponse;
  }

  @override
  void update(void updates(AccountsResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountsResponse build() {
    _$AccountsResponse _$result;
    try {
      _$result = _$v ??
          new _$AccountsResponse._(
              lastModification: lastModification, accounts: accounts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AccountResponse extends AccountResponse {
  @override
  final String id;
  @override
  final String group;
  @override
  final String accessToken;
  @override
  final String login;
  @override
  final String studentName;

  factory _$AccountResponse([void updates(AccountResponseBuilder b)]) =>
      (new AccountResponseBuilder()..update(updates)).build();

  _$AccountResponse._(
      {this.id, this.group, this.accessToken, this.login, this.studentName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AccountResponse', 'id');
    }
    if (group == null) {
      throw new BuiltValueNullFieldError('AccountResponse', 'group');
    }
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('AccountResponse', 'accessToken');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError('AccountResponse', 'login');
    }
    if (studentName == null) {
      throw new BuiltValueNullFieldError('AccountResponse', 'studentName');
    }
  }

  @override
  AccountResponse rebuild(void updates(AccountResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseBuilder toBuilder() =>
      new AccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponse &&
        id == other.id &&
        group == other.group &&
        accessToken == other.accessToken &&
        login == other.login &&
        studentName == other.studentName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), group.hashCode), accessToken.hashCode),
            login.hashCode),
        studentName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountResponse')
          ..add('id', id)
          ..add('group', group)
          ..add('accessToken', accessToken)
          ..add('login', login)
          ..add('studentName', studentName))
        .toString();
  }
}

class AccountResponseBuilder
    implements Builder<AccountResponse, AccountResponseBuilder> {
  _$AccountResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _group;
  String get group => _$this._group;
  set group(String group) => _$this._group = group;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _studentName;
  String get studentName => _$this._studentName;
  set studentName(String studentName) => _$this._studentName = studentName;

  AccountResponseBuilder();

  AccountResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _group = _$v.group;
      _accessToken = _$v.accessToken;
      _login = _$v.login;
      _studentName = _$v.studentName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountResponse;
  }

  @override
  void update(void updates(AccountResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountResponse build() {
    final _$result = _$v ??
        new _$AccountResponse._(
            id: id,
            group: group,
            accessToken: accessToken,
            login: login,
            studentName: studentName);
    replace(_$result);
    return _$result;
  }
}

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

Serializer<LibrusAccountsResponse> _$librusAccountsResponseSerializer =
    new _$LibrusAccountsResponseSerializer();
Serializer<LibrusAccountResponse> _$librusAccountResponseSerializer =
    new _$LibrusAccountResponseSerializer();

class _$LibrusAccountsResponseSerializer
    implements StructuredSerializer<LibrusAccountsResponse> {
  @override
  final Iterable<Type> types = const [
    LibrusAccountsResponse,
    _$LibrusAccountsResponse
  ];
  @override
  final String wireName = 'LibrusAccountsResponse';

  @override
  Iterable serialize(Serializers serializers, LibrusAccountsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lastModification',
      serializers.serialize(object.lastModification,
          specifiedType: const FullType(num)),
      'accounts',
      serializers.serialize(object.accounts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LibrusAccountResponse)])),
    ];

    return result;
  }

  @override
  LibrusAccountsResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusAccountsResponseBuilder();

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
                      BuiltList, const [const FullType(LibrusAccountResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$LibrusAccountResponseSerializer
    implements StructuredSerializer<LibrusAccountResponse> {
  @override
  final Iterable<Type> types = const [
    LibrusAccountResponse,
    _$LibrusAccountResponse
  ];
  @override
  final String wireName = 'LibrusAccountResponse';

  @override
  Iterable serialize(Serializers serializers, LibrusAccountResponse object,
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
  LibrusAccountResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusAccountResponseBuilder();

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

class _$LibrusAccountsResponse extends LibrusAccountsResponse {
  @override
  final num lastModification;
  @override
  final BuiltList<LibrusAccountResponse> accounts;

  factory _$LibrusAccountsResponse(
          [void updates(LibrusAccountsResponseBuilder b)]) =>
      (new LibrusAccountsResponseBuilder()..update(updates)).build();

  _$LibrusAccountsResponse._({this.lastModification, this.accounts})
      : super._() {
    if (lastModification == null) {
      throw new BuiltValueNullFieldError(
          'LibrusAccountsResponse', 'lastModification');
    }
    if (accounts == null) {
      throw new BuiltValueNullFieldError('LibrusAccountsResponse', 'accounts');
    }
  }

  @override
  LibrusAccountsResponse rebuild(
          void updates(LibrusAccountsResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusAccountsResponseBuilder toBuilder() =>
      new LibrusAccountsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusAccountsResponse &&
        lastModification == other.lastModification &&
        accounts == other.accounts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lastModification.hashCode), accounts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LibrusAccountsResponse')
          ..add('lastModification', lastModification)
          ..add('accounts', accounts))
        .toString();
  }
}

class LibrusAccountsResponseBuilder
    implements Builder<LibrusAccountsResponse, LibrusAccountsResponseBuilder> {
  _$LibrusAccountsResponse _$v;

  num _lastModification;
  num get lastModification => _$this._lastModification;
  set lastModification(num lastModification) =>
      _$this._lastModification = lastModification;

  ListBuilder<LibrusAccountResponse> _accounts;
  ListBuilder<LibrusAccountResponse> get accounts =>
      _$this._accounts ??= new ListBuilder<LibrusAccountResponse>();
  set accounts(ListBuilder<LibrusAccountResponse> accounts) =>
      _$this._accounts = accounts;

  LibrusAccountsResponseBuilder();

  LibrusAccountsResponseBuilder get _$this {
    if (_$v != null) {
      _lastModification = _$v.lastModification;
      _accounts = _$v.accounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibrusAccountsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusAccountsResponse;
  }

  @override
  void update(void updates(LibrusAccountsResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusAccountsResponse build() {
    _$LibrusAccountsResponse _$result;
    try {
      _$result = _$v ??
          new _$LibrusAccountsResponse._(
              lastModification: lastModification, accounts: accounts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LibrusAccountsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LibrusAccountResponse extends LibrusAccountResponse {
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

  factory _$LibrusAccountResponse(
          [void updates(LibrusAccountResponseBuilder b)]) =>
      (new LibrusAccountResponseBuilder()..update(updates)).build();

  _$LibrusAccountResponse._(
      {this.id, this.group, this.accessToken, this.login, this.studentName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LibrusAccountResponse', 'id');
    }
    if (group == null) {
      throw new BuiltValueNullFieldError('LibrusAccountResponse', 'group');
    }
    if (accessToken == null) {
      throw new BuiltValueNullFieldError(
          'LibrusAccountResponse', 'accessToken');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError('LibrusAccountResponse', 'login');
    }
    if (studentName == null) {
      throw new BuiltValueNullFieldError(
          'LibrusAccountResponse', 'studentName');
    }
  }

  @override
  LibrusAccountResponse rebuild(void updates(LibrusAccountResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusAccountResponseBuilder toBuilder() =>
      new LibrusAccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusAccountResponse &&
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
    return (newBuiltValueToStringHelper('LibrusAccountResponse')
          ..add('id', id)
          ..add('group', group)
          ..add('accessToken', accessToken)
          ..add('login', login)
          ..add('studentName', studentName))
        .toString();
  }
}

class LibrusAccountResponseBuilder
    implements Builder<LibrusAccountResponse, LibrusAccountResponseBuilder> {
  _$LibrusAccountResponse _$v;

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

  LibrusAccountResponseBuilder();

  LibrusAccountResponseBuilder get _$this {
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
  void replace(LibrusAccountResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusAccountResponse;
  }

  @override
  void update(void updates(LibrusAccountResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusAccountResponse build() {
    final _$result = _$v ??
        new _$LibrusAccountResponse._(
            id: id,
            group: group,
            accessToken: accessToken,
            login: login,
            studentName: studentName);
    replace(_$result);
    return _$result;
  }
}

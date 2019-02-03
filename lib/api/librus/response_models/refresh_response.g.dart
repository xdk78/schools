// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_response.dart';

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

Serializer<RefreshResponse> _$refreshResponseSerializer =
    new _$RefreshResponseSerializer();

class _$RefreshResponseSerializer
    implements StructuredSerializer<RefreshResponse> {
  @override
  final Iterable<Type> types = const [RefreshResponse, _$RefreshResponse];
  @override
  final String wireName = 'RefreshResponse';

  @override
  Iterable serialize(Serializers serializers, RefreshResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
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
      'scopes',
      serializers.serialize(object.scopes,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RefreshResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefreshResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
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
        case 'scopes':
          result.scopes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RefreshResponse extends RefreshResponse {
  @override
  final num id;
  @override
  final String group;
  @override
  final String accessToken;
  @override
  final String login;
  @override
  final String studentName;
  @override
  final String scopes;
  @override
  final String state;

  factory _$RefreshResponse([void updates(RefreshResponseBuilder b)]) =>
      (new RefreshResponseBuilder()..update(updates)).build();

  _$RefreshResponse._(
      {this.id,
      this.group,
      this.accessToken,
      this.login,
      this.studentName,
      this.scopes,
      this.state})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'id');
    }
    if (group == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'group');
    }
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'accessToken');
    }
    if (login == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'login');
    }
    if (studentName == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'studentName');
    }
    if (scopes == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'scopes');
    }
    if (state == null) {
      throw new BuiltValueNullFieldError('RefreshResponse', 'state');
    }
  }

  @override
  RefreshResponse rebuild(void updates(RefreshResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshResponseBuilder toBuilder() =>
      new RefreshResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshResponse &&
        id == other.id &&
        group == other.group &&
        accessToken == other.accessToken &&
        login == other.login &&
        studentName == other.studentName &&
        scopes == other.scopes &&
        state == other.state;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), group.hashCode),
                        accessToken.hashCode),
                    login.hashCode),
                studentName.hashCode),
            scopes.hashCode),
        state.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RefreshResponse')
          ..add('id', id)
          ..add('group', group)
          ..add('accessToken', accessToken)
          ..add('login', login)
          ..add('studentName', studentName)
          ..add('scopes', scopes)
          ..add('state', state))
        .toString();
  }
}

class RefreshResponseBuilder
    implements Builder<RefreshResponse, RefreshResponseBuilder> {
  _$RefreshResponse _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

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

  String _scopes;
  String get scopes => _$this._scopes;
  set scopes(String scopes) => _$this._scopes = scopes;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  RefreshResponseBuilder();

  RefreshResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _group = _$v.group;
      _accessToken = _$v.accessToken;
      _login = _$v.login;
      _studentName = _$v.studentName;
      _scopes = _$v.scopes;
      _state = _$v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RefreshResponse;
  }

  @override
  void update(void updates(RefreshResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$RefreshResponse build() {
    final _$result = _$v ??
        new _$RefreshResponse._(
            id: id,
            group: group,
            accessToken: accessToken,
            login: login,
            studentName: studentName,
            scopes: scopes,
            state: state);
    replace(_$result);
    return _$result;
  }
}

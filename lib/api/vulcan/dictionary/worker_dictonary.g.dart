// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_dictonary.dart';

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

Serializer<WorkerDictonary> _$workerDictonarySerializer =
    new _$WorkerDictonarySerializer();

class _$WorkerDictonarySerializer
    implements StructuredSerializer<WorkerDictonary> {
  @override
  final Iterable<Type> types = const [WorkerDictonary, _$WorkerDictonary];
  @override
  final String wireName = 'WorkerDictonary';

  @override
  Iterable serialize(Serializers serializers, WorkerDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'Imie',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Nazwisko',
      serializers.serialize(object.surname,
          specifiedType: const FullType(String)),
      'Kod',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'Aktywny',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
      'Nauczyciel',
      serializers.serialize(object.isTeacher,
          specifiedType: const FullType(bool)),
      'LoginId',
      serializers.serialize(object.loginId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WorkerDictonary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkerDictonaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Imie':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Nazwisko':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Kod':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Aktywny':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Nauczyciel':
          result.isTeacher = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'LoginId':
          result.loginId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkerDictonary extends WorkerDictonary {
  @override
  final int id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String code;
  @override
  final bool active;
  @override
  final bool isTeacher;
  @override
  final int loginId;

  factory _$WorkerDictonary([void updates(WorkerDictonaryBuilder b)]) =>
      (new WorkerDictonaryBuilder()..update(updates)).build();

  _$WorkerDictonary._(
      {this.id,
      this.name,
      this.surname,
      this.code,
      this.active,
      this.isTeacher,
      this.loginId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'name');
    }
    if (surname == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'surname');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'code');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'active');
    }
    if (isTeacher == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'isTeacher');
    }
    if (loginId == null) {
      throw new BuiltValueNullFieldError('WorkerDictonary', 'loginId');
    }
  }

  @override
  WorkerDictonary rebuild(void updates(WorkerDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerDictonaryBuilder toBuilder() =>
      new WorkerDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkerDictonary &&
        id == other.id &&
        name == other.name &&
        surname == other.surname &&
        code == other.code &&
        active == other.active &&
        isTeacher == other.isTeacher &&
        loginId == other.loginId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        surname.hashCode),
                    code.hashCode),
                active.hashCode),
            isTeacher.hashCode),
        loginId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WorkerDictonary')
          ..add('id', id)
          ..add('name', name)
          ..add('surname', surname)
          ..add('code', code)
          ..add('active', active)
          ..add('isTeacher', isTeacher)
          ..add('loginId', loginId))
        .toString();
  }
}

class WorkerDictonaryBuilder
    implements Builder<WorkerDictonary, WorkerDictonaryBuilder> {
  _$WorkerDictonary _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _surname;
  String get surname => _$this._surname;
  set surname(String surname) => _$this._surname = surname;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  bool _isTeacher;
  bool get isTeacher => _$this._isTeacher;
  set isTeacher(bool isTeacher) => _$this._isTeacher = isTeacher;

  int _loginId;
  int get loginId => _$this._loginId;
  set loginId(int loginId) => _$this._loginId = loginId;

  WorkerDictonaryBuilder();

  WorkerDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _surname = _$v.surname;
      _code = _$v.code;
      _active = _$v.active;
      _isTeacher = _$v.isTeacher;
      _loginId = _$v.loginId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkerDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WorkerDictonary;
  }

  @override
  void update(void updates(WorkerDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$WorkerDictonary build() {
    final _$result = _$v ??
        new _$WorkerDictonary._(
            id: id,
            name: name,
            surname: surname,
            code: code,
            active: active,
            isTeacher: isTeacher,
            loginId: loginId);
    replace(_$result);
    return _$result;
  }
}

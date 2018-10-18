// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_dictonary.dart';

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

Serializer<TeacherDictonary> _$teacherDictonarySerializer =
    new _$TeacherDictonarySerializer();

class _$TeacherDictonarySerializer
    implements StructuredSerializer<TeacherDictonary> {
  @override
  final Iterable<Type> types = const [TeacherDictonary, _$TeacherDictonary];
  @override
  final String wireName = 'TeacherDictonary';

  @override
  Iterable serialize(Serializers serializers, TeacherDictonary object,
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
  TeacherDictonary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeacherDictonaryBuilder();

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

class _$TeacherDictonary extends TeacherDictonary {
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

  factory _$TeacherDictonary([void updates(TeacherDictonaryBuilder b)]) =>
      (new TeacherDictonaryBuilder()..update(updates)).build();

  _$TeacherDictonary._(
      {this.id,
      this.name,
      this.surname,
      this.code,
      this.active,
      this.isTeacher,
      this.loginId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'name');
    }
    if (surname == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'surname');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'code');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'active');
    }
    if (isTeacher == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'isTeacher');
    }
    if (loginId == null) {
      throw new BuiltValueNullFieldError('TeacherDictonary', 'loginId');
    }
  }

  @override
  TeacherDictonary rebuild(void updates(TeacherDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TeacherDictonaryBuilder toBuilder() =>
      new TeacherDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeacherDictonary &&
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
    return (newBuiltValueToStringHelper('TeacherDictonary')
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

class TeacherDictonaryBuilder
    implements Builder<TeacherDictonary, TeacherDictonaryBuilder> {
  _$TeacherDictonary _$v;

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

  TeacherDictonaryBuilder();

  TeacherDictonaryBuilder get _$this {
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
  void replace(TeacherDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeacherDictonary;
  }

  @override
  void update(void updates(TeacherDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TeacherDictonary build() {
    final _$result = _$v ??
        new _$TeacherDictonary._(
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

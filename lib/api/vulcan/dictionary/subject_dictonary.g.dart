// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_dictonary.dart';

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

Serializer<SubjectDictonary> _$subjectDictonarySerializer =
    new _$SubjectDictonarySerializer();

class _$SubjectDictonarySerializer
    implements StructuredSerializer<SubjectDictonary> {
  @override
  final Iterable<Type> types = const [SubjectDictonary, _$SubjectDictonary];
  @override
  final String wireName = 'SubjectDictonary';

  @override
  Iterable serialize(Serializers serializers, SubjectDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'Nazwa',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Kod',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'Aktywny',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
      'Pozycja',
      serializers.serialize(object.position,
          specifiedType: const FullType(num)),
    ];

    return result;
  }

  @override
  SubjectDictonary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubjectDictonaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'Nazwa':
          result.name = serializers.deserialize(value,
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
        case 'Pozycja':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$SubjectDictonary extends SubjectDictonary {
  @override
  final num id;
  @override
  final String name;
  @override
  final String code;
  @override
  final bool active;
  @override
  final num position;

  factory _$SubjectDictonary([void updates(SubjectDictonaryBuilder b)]) =>
      (new SubjectDictonaryBuilder()..update(updates)).build();

  _$SubjectDictonary._(
      {this.id, this.name, this.code, this.active, this.position})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SubjectDictonary', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SubjectDictonary', 'name');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('SubjectDictonary', 'code');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('SubjectDictonary', 'active');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError('SubjectDictonary', 'position');
    }
  }

  @override
  SubjectDictonary rebuild(void updates(SubjectDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SubjectDictonaryBuilder toBuilder() =>
      new SubjectDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubjectDictonary &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        active == other.active &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), code.hashCode),
            active.hashCode),
        position.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubjectDictonary')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('active', active)
          ..add('position', position))
        .toString();
  }
}

class SubjectDictonaryBuilder
    implements Builder<SubjectDictonary, SubjectDictonaryBuilder> {
  _$SubjectDictonary _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  num _position;
  num get position => _$this._position;
  set position(num position) => _$this._position = position;

  SubjectDictonaryBuilder();

  SubjectDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _code = _$v.code;
      _active = _$v.active;
      _position = _$v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubjectDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubjectDictonary;
  }

  @override
  void update(void updates(SubjectDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SubjectDictonary build() {
    final _$result = _$v ??
        new _$SubjectDictonary._(
            id: id, name: name, code: code, active: active, position: position);
    replace(_$result);
    return _$result;
  }
}

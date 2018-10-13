// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_category_dictonary.dart';

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

Serializer<WarningCategoryDictonary> _$warningCategoryDictonarySerializer =
    new _$WarningCategoryDictonarySerializer();

class _$WarningCategoryDictonarySerializer
    implements StructuredSerializer<WarningCategoryDictonary> {
  @override
  final Iterable<Type> types = const [
    WarningCategoryDictonary,
    _$WarningCategoryDictonary
  ];
  @override
  final String wireName = 'WarningCategoryDictonary';

  @override
  Iterable serialize(Serializers serializers, WarningCategoryDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'Kod',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'Aktywny',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  WarningCategoryDictonary deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WarningCategoryDictonaryBuilder();

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
        case 'Kod':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Aktywny':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$WarningCategoryDictonary extends WarningCategoryDictonary {
  @override
  final int id;
  @override
  final String code;
  @override
  final bool active;

  factory _$WarningCategoryDictonary(
          [void updates(WarningCategoryDictonaryBuilder b)]) =>
      (new WarningCategoryDictonaryBuilder()..update(updates)).build();

  _$WarningCategoryDictonary._({this.id, this.code, this.active}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('WarningCategoryDictonary', 'id');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('WarningCategoryDictonary', 'code');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('WarningCategoryDictonary', 'active');
    }
  }

  @override
  WarningCategoryDictonary rebuild(
          void updates(WarningCategoryDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  WarningCategoryDictonaryBuilder toBuilder() =>
      new WarningCategoryDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WarningCategoryDictonary &&
        id == other.id &&
        code == other.code &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), code.hashCode), active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WarningCategoryDictonary')
          ..add('id', id)
          ..add('code', code)
          ..add('active', active))
        .toString();
  }
}

class WarningCategoryDictonaryBuilder
    implements
        Builder<WarningCategoryDictonary, WarningCategoryDictonaryBuilder> {
  _$WarningCategoryDictonary _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  WarningCategoryDictonaryBuilder();

  WarningCategoryDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _code = _$v.code;
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WarningCategoryDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WarningCategoryDictonary;
  }

  @override
  void update(void updates(WarningCategoryDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$WarningCategoryDictonary build() {
    final _$result = _$v ??
        new _$WarningCategoryDictonary._(id: id, code: code, active: active);
    replace(_$result);
    return _$result;
  }
}

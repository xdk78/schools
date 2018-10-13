// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_category_dictonary.dart';

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

Serializer<MarkCategoryDictonary> _$markCategoryDictonarySerializer =
    new _$MarkCategoryDictonarySerializer();

class _$MarkCategoryDictonarySerializer
    implements StructuredSerializer<MarkCategoryDictonary> {
  @override
  final Iterable<Type> types = const [
    MarkCategoryDictonary,
    _$MarkCategoryDictonary
  ];
  @override
  final String wireName = 'MarkCategoryDictonary';

  @override
  Iterable serialize(Serializers serializers, MarkCategoryDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'Kod',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'Nazwa',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MarkCategoryDictonary deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarkCategoryDictonaryBuilder();

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
        case 'Nazwa':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MarkCategoryDictonary extends MarkCategoryDictonary {
  @override
  final int id;
  @override
  final String code;
  @override
  final String name;

  factory _$MarkCategoryDictonary(
          [void updates(MarkCategoryDictonaryBuilder b)]) =>
      (new MarkCategoryDictonaryBuilder()..update(updates)).build();

  _$MarkCategoryDictonary._({this.id, this.code, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MarkCategoryDictonary', 'id');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('MarkCategoryDictonary', 'code');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MarkCategoryDictonary', 'name');
    }
  }

  @override
  MarkCategoryDictonary rebuild(void updates(MarkCategoryDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkCategoryDictonaryBuilder toBuilder() =>
      new MarkCategoryDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarkCategoryDictonary &&
        id == other.id &&
        code == other.code &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), code.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarkCategoryDictonary')
          ..add('id', id)
          ..add('code', code)
          ..add('name', name))
        .toString();
  }
}

class MarkCategoryDictonaryBuilder
    implements Builder<MarkCategoryDictonary, MarkCategoryDictonaryBuilder> {
  _$MarkCategoryDictonary _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MarkCategoryDictonaryBuilder();

  MarkCategoryDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _code = _$v.code;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarkCategoryDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarkCategoryDictonary;
  }

  @override
  void update(void updates(MarkCategoryDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MarkCategoryDictonary build() {
    final _$result =
        _$v ?? new _$MarkCategoryDictonary._(id: id, code: code, name: name);
    replace(_$result);
    return _$result;
  }
}

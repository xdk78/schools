// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_type_dictonary.dart';

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

Serializer<AttendanceTypeDictonary> _$attendanceTypeDictonarySerializer =
    new _$AttendanceTypeDictonarySerializer();

class _$AttendanceTypeDictonarySerializer
    implements StructuredSerializer<AttendanceTypeDictonary> {
  @override
  final Iterable<Type> types = const [
    AttendanceTypeDictonary,
    _$AttendanceTypeDictonary
  ];
  @override
  final String wireName = 'AttendanceTypeDictonary';

  @override
  Iterable serialize(Serializers serializers, AttendanceTypeDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'Nazwa',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'Aktywny',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
      'WpisDomyslny',
      serializers.serialize(object.defaultEntry,
          specifiedType: const FullType(bool)),
      'IdKategoriaFrek',
      serializers.serialize(object.attendanceCategoryId,
          specifiedType: const FullType(num)),
    ];

    return result;
  }

  @override
  AttendanceTypeDictonary deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceTypeDictonaryBuilder();

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
        case 'Symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Aktywny':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'WpisDomyslny':
          result.defaultEntry = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IdKategoriaFrek':
          result.attendanceCategoryId = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$AttendanceTypeDictonary extends AttendanceTypeDictonary {
  @override
  final num id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final bool active;
  @override
  final bool defaultEntry;
  @override
  final num attendanceCategoryId;

  factory _$AttendanceTypeDictonary(
          [void updates(AttendanceTypeDictonaryBuilder b)]) =>
      (new AttendanceTypeDictonaryBuilder()..update(updates)).build();

  _$AttendanceTypeDictonary._(
      {this.id,
      this.name,
      this.symbol,
      this.active,
      this.defaultEntry,
      this.attendanceCategoryId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AttendanceTypeDictonary', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AttendanceTypeDictonary', 'name');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('AttendanceTypeDictonary', 'symbol');
    }
    if (active == null) {
      throw new BuiltValueNullFieldError('AttendanceTypeDictonary', 'active');
    }
    if (defaultEntry == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceTypeDictonary', 'defaultEntry');
    }
    if (attendanceCategoryId == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceTypeDictonary', 'attendanceCategoryId');
    }
  }

  @override
  AttendanceTypeDictonary rebuild(
          void updates(AttendanceTypeDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceTypeDictonaryBuilder toBuilder() =>
      new AttendanceTypeDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceTypeDictonary &&
        id == other.id &&
        name == other.name &&
        symbol == other.symbol &&
        active == other.active &&
        defaultEntry == other.defaultEntry &&
        attendanceCategoryId == other.attendanceCategoryId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), symbol.hashCode),
                active.hashCode),
            defaultEntry.hashCode),
        attendanceCategoryId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttendanceTypeDictonary')
          ..add('id', id)
          ..add('name', name)
          ..add('symbol', symbol)
          ..add('active', active)
          ..add('defaultEntry', defaultEntry)
          ..add('attendanceCategoryId', attendanceCategoryId))
        .toString();
  }
}

class AttendanceTypeDictonaryBuilder
    implements
        Builder<AttendanceTypeDictonary, AttendanceTypeDictonaryBuilder> {
  _$AttendanceTypeDictonary _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  bool _defaultEntry;
  bool get defaultEntry => _$this._defaultEntry;
  set defaultEntry(bool defaultEntry) => _$this._defaultEntry = defaultEntry;

  num _attendanceCategoryId;
  num get attendanceCategoryId => _$this._attendanceCategoryId;
  set attendanceCategoryId(num attendanceCategoryId) =>
      _$this._attendanceCategoryId = attendanceCategoryId;

  AttendanceTypeDictonaryBuilder();

  AttendanceTypeDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _symbol = _$v.symbol;
      _active = _$v.active;
      _defaultEntry = _$v.defaultEntry;
      _attendanceCategoryId = _$v.attendanceCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceTypeDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttendanceTypeDictonary;
  }

  @override
  void update(void updates(AttendanceTypeDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AttendanceTypeDictonary build() {
    final _$result = _$v ??
        new _$AttendanceTypeDictonary._(
            id: id,
            name: name,
            symbol: symbol,
            active: active,
            defaultEntry: defaultEntry,
            attendanceCategoryId: attendanceCategoryId);
    replace(_$result);
    return _$result;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_category_dictonary.dart';

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

Serializer<AttendanceCategoryDictonary>
    _$attendanceCategoryDictonarySerializer =
    new _$AttendanceCategoryDictonarySerializer();

class _$AttendanceCategoryDictonarySerializer
    implements StructuredSerializer<AttendanceCategoryDictonary> {
  @override
  final Iterable<Type> types = const [
    AttendanceCategoryDictonary,
    _$AttendanceCategoryDictonary
  ];
  @override
  final String wireName = 'AttendanceCategoryDictonary';

  @override
  Iterable serialize(
      Serializers serializers, AttendanceCategoryDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'Nazwa',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Pozycja',
      serializers.serialize(object.position,
          specifiedType: const FullType(num)),
      'Obecnosc',
      serializers.serialize(object.presence,
          specifiedType: const FullType(bool)),
      'Nieobecnosc',
      serializers.serialize(object.absence,
          specifiedType: const FullType(bool)),
      'Zwolnienie',
      serializers.serialize(object.execusal,
          specifiedType: const FullType(bool)),
      'Spoznienie',
      serializers.serialize(object.late, specifiedType: const FullType(bool)),
      'Usprawiedliwione',
      serializers.serialize(object.justification,
          specifiedType: const FullType(bool)),
      'Usuniete',
      serializers.serialize(object.deleted,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  AttendanceCategoryDictonary deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttendanceCategoryDictonaryBuilder();

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
        case 'Pozycja':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'Obecnosc':
          result.presence = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Nieobecnosc':
          result.absence = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Zwolnienie':
          result.execusal = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Spoznienie':
          result.late = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Usprawiedliwione':
          result.justification = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Usuniete':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AttendanceCategoryDictonary extends AttendanceCategoryDictonary {
  @override
  final num id;
  @override
  final String name;
  @override
  final num position;
  @override
  final bool presence;
  @override
  final bool absence;
  @override
  final bool execusal;
  @override
  final bool late;
  @override
  final bool justification;
  @override
  final bool deleted;

  factory _$AttendanceCategoryDictonary(
          [void updates(AttendanceCategoryDictonaryBuilder b)]) =>
      (new AttendanceCategoryDictonaryBuilder()..update(updates)).build();

  _$AttendanceCategoryDictonary._(
      {this.id,
      this.name,
      this.position,
      this.presence,
      this.absence,
      this.execusal,
      this.late,
      this.justification,
      this.deleted})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AttendanceCategoryDictonary', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AttendanceCategoryDictonary', 'name');
    }
    if (position == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'position');
    }
    if (presence == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'presence');
    }
    if (absence == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'absence');
    }
    if (execusal == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'execusal');
    }
    if (late == null) {
      throw new BuiltValueNullFieldError('AttendanceCategoryDictonary', 'late');
    }
    if (justification == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'justification');
    }
    if (deleted == null) {
      throw new BuiltValueNullFieldError(
          'AttendanceCategoryDictonary', 'deleted');
    }
  }

  @override
  AttendanceCategoryDictonary rebuild(
          void updates(AttendanceCategoryDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AttendanceCategoryDictonaryBuilder toBuilder() =>
      new AttendanceCategoryDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttendanceCategoryDictonary &&
        id == other.id &&
        name == other.name &&
        position == other.position &&
        presence == other.presence &&
        absence == other.absence &&
        execusal == other.execusal &&
        late == other.late &&
        justification == other.justification &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                position.hashCode),
                            presence.hashCode),
                        absence.hashCode),
                    execusal.hashCode),
                late.hashCode),
            justification.hashCode),
        deleted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttendanceCategoryDictonary')
          ..add('id', id)
          ..add('name', name)
          ..add('position', position)
          ..add('presence', presence)
          ..add('absence', absence)
          ..add('execusal', execusal)
          ..add('late', late)
          ..add('justification', justification)
          ..add('deleted', deleted))
        .toString();
  }
}

class AttendanceCategoryDictonaryBuilder
    implements
        Builder<AttendanceCategoryDictonary,
            AttendanceCategoryDictonaryBuilder> {
  _$AttendanceCategoryDictonary _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  num _position;
  num get position => _$this._position;
  set position(num position) => _$this._position = position;

  bool _presence;
  bool get presence => _$this._presence;
  set presence(bool presence) => _$this._presence = presence;

  bool _absence;
  bool get absence => _$this._absence;
  set absence(bool absence) => _$this._absence = absence;

  bool _execusal;
  bool get execusal => _$this._execusal;
  set execusal(bool execusal) => _$this._execusal = execusal;

  bool _late;
  bool get late => _$this._late;
  set late(bool late) => _$this._late = late;

  bool _justification;
  bool get justification => _$this._justification;
  set justification(bool justification) =>
      _$this._justification = justification;

  bool _deleted;
  bool get deleted => _$this._deleted;
  set deleted(bool deleted) => _$this._deleted = deleted;

  AttendanceCategoryDictonaryBuilder();

  AttendanceCategoryDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _position = _$v.position;
      _presence = _$v.presence;
      _absence = _$v.absence;
      _execusal = _$v.execusal;
      _late = _$v.late;
      _justification = _$v.justification;
      _deleted = _$v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttendanceCategoryDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AttendanceCategoryDictonary;
  }

  @override
  void update(void updates(AttendanceCategoryDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AttendanceCategoryDictonary build() {
    final _$result = _$v ??
        new _$AttendanceCategoryDictonary._(
            id: id,
            name: name,
            position: position,
            presence: presence,
            absence: absence,
            execusal: execusal,
            late: late,
            justification: justification,
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

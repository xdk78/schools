// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_state.dart';

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

Serializer<TimetableState> _$timetableStateSerializer =
    new _$TimetableStateSerializer();

class _$TimetableStateSerializer
    implements StructuredSerializer<TimetableState> {
  @override
  final Iterable<Type> types = const [TimetableState, _$TimetableState];
  @override
  final String wireName = 'TimetableState';

  @override
  Iterable serialize(Serializers serializers, TimetableState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.monday != null) {
      result
        ..add('monday')
        ..add(serializers.serialize(object.monday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Lesson)])));
    }
    if (object.tuesday != null) {
      result
        ..add('tuesday')
        ..add(serializers.serialize(object.tuesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Lesson)])));
    }
    if (object.wednesday != null) {
      result
        ..add('wednesday')
        ..add(serializers.serialize(object.wednesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Lesson)])));
    }
    if (object.thursday != null) {
      result
        ..add('thursday')
        ..add(serializers.serialize(object.thursday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Lesson)])));
    }
    if (object.friday != null) {
      result
        ..add('friday')
        ..add(serializers.serialize(object.friday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Lesson)])));
    }

    return result;
  }

  @override
  TimetableState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimetableStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'monday':
          result.monday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'tuesday':
          result.tuesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'wednesday':
          result.wednesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'thursday':
          result.thursday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'friday':
          result.friday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TimetableState extends TimetableState {
  @override
  final BuiltList<Lesson> monday;
  @override
  final BuiltList<Lesson> tuesday;
  @override
  final BuiltList<Lesson> wednesday;
  @override
  final BuiltList<Lesson> thursday;
  @override
  final BuiltList<Lesson> friday;

  factory _$TimetableState([void updates(TimetableStateBuilder b)]) =>
      (new TimetableStateBuilder()..update(updates)).build();

  _$TimetableState._(
      {this.monday, this.tuesday, this.wednesday, this.thursday, this.friday})
      : super._();

  @override
  TimetableState rebuild(void updates(TimetableStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TimetableStateBuilder toBuilder() =>
      new TimetableStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimetableState &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, monday.hashCode), tuesday.hashCode),
                wednesday.hashCode),
            thursday.hashCode),
        friday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimetableState')
          ..add('monday', monday)
          ..add('tuesday', tuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday))
        .toString();
  }
}

class TimetableStateBuilder
    implements Builder<TimetableState, TimetableStateBuilder> {
  _$TimetableState _$v;

  ListBuilder<Lesson> _monday;
  ListBuilder<Lesson> get monday =>
      _$this._monday ??= new ListBuilder<Lesson>();
  set monday(ListBuilder<Lesson> monday) => _$this._monday = monday;

  ListBuilder<Lesson> _tuesday;
  ListBuilder<Lesson> get tuesday =>
      _$this._tuesday ??= new ListBuilder<Lesson>();
  set tuesday(ListBuilder<Lesson> tuesday) => _$this._tuesday = tuesday;

  ListBuilder<Lesson> _wednesday;
  ListBuilder<Lesson> get wednesday =>
      _$this._wednesday ??= new ListBuilder<Lesson>();
  set wednesday(ListBuilder<Lesson> wednesday) => _$this._wednesday = wednesday;

  ListBuilder<Lesson> _thursday;
  ListBuilder<Lesson> get thursday =>
      _$this._thursday ??= new ListBuilder<Lesson>();
  set thursday(ListBuilder<Lesson> thursday) => _$this._thursday = thursday;

  ListBuilder<Lesson> _friday;
  ListBuilder<Lesson> get friday =>
      _$this._friday ??= new ListBuilder<Lesson>();
  set friday(ListBuilder<Lesson> friday) => _$this._friday = friday;

  TimetableStateBuilder();

  TimetableStateBuilder get _$this {
    if (_$v != null) {
      _monday = _$v.monday?.toBuilder();
      _tuesday = _$v.tuesday?.toBuilder();
      _wednesday = _$v.wednesday?.toBuilder();
      _thursday = _$v.thursday?.toBuilder();
      _friday = _$v.friday?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimetableState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimetableState;
  }

  @override
  void update(void updates(TimetableStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TimetableState build() {
    _$TimetableState _$result;
    try {
      _$result = _$v ??
          new _$TimetableState._(
              monday: _monday?.build(),
              tuesday: _tuesday?.build(),
              wednesday: _wednesday?.build(),
              thursday: _thursday?.build(),
              friday: _friday?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'monday';
        _monday?.build();
        _$failedField = 'tuesday';
        _tuesday?.build();
        _$failedField = 'wednesday';
        _wednesday?.build();
        _$failedField = 'thursday';
        _thursday?.build();
        _$failedField = 'friday';
        _friday?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimetableState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

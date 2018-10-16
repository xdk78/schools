// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

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

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'vulcanAuthState',
      serializers.serialize(object.vulcanAuthState,
          specifiedType: const FullType(VulcanAuthState)),
      'librusAuthState',
      serializers.serialize(object.librusAuthState,
          specifiedType: const FullType(LibrusAuthState)),
      'currentSystem',
      serializers.serialize(object.currentSystem,
          specifiedType: const FullType(String)),
      'vulcanState',
      serializers.serialize(object.vulcanState,
          specifiedType: const FullType(VulcanState)),
      'timetableState',
      serializers.serialize(object.timetableState,
          specifiedType: const FullType(TimetableState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vulcanAuthState':
          result.vulcanAuthState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VulcanAuthState))
              as VulcanAuthState);
          break;
        case 'librusAuthState':
          result.librusAuthState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LibrusAuthState))
              as LibrusAuthState);
          break;
        case 'currentSystem':
          result.currentSystem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vulcanState':
          result.vulcanState.replace(serializers.deserialize(value,
              specifiedType: const FullType(VulcanState)) as VulcanState);
          break;
        case 'timetableState':
          result.timetableState.replace(serializers.deserialize(value,
              specifiedType: const FullType(TimetableState)) as TimetableState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final VulcanAuthState vulcanAuthState;
  @override
  final LibrusAuthState librusAuthState;
  @override
  final String currentSystem;
  @override
  final VulcanState vulcanState;
  @override
  final TimetableState timetableState;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.vulcanAuthState,
      this.librusAuthState,
      this.currentSystem,
      this.vulcanState,
      this.timetableState})
      : super._() {
    if (vulcanAuthState == null) {
      throw new BuiltValueNullFieldError('AppState', 'vulcanAuthState');
    }
    if (librusAuthState == null) {
      throw new BuiltValueNullFieldError('AppState', 'librusAuthState');
    }
    if (currentSystem == null) {
      throw new BuiltValueNullFieldError('AppState', 'currentSystem');
    }
    if (vulcanState == null) {
      throw new BuiltValueNullFieldError('AppState', 'vulcanState');
    }
    if (timetableState == null) {
      throw new BuiltValueNullFieldError('AppState', 'timetableState');
    }
  }

  @override
  AppState rebuild(void updates(AppStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        vulcanAuthState == other.vulcanAuthState &&
        librusAuthState == other.librusAuthState &&
        currentSystem == other.currentSystem &&
        vulcanState == other.vulcanState &&
        timetableState == other.timetableState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, vulcanAuthState.hashCode), librusAuthState.hashCode),
                currentSystem.hashCode),
            vulcanState.hashCode),
        timetableState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('vulcanAuthState', vulcanAuthState)
          ..add('librusAuthState', librusAuthState)
          ..add('currentSystem', currentSystem)
          ..add('vulcanState', vulcanState)
          ..add('timetableState', timetableState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  VulcanAuthStateBuilder _vulcanAuthState;
  VulcanAuthStateBuilder get vulcanAuthState =>
      _$this._vulcanAuthState ??= new VulcanAuthStateBuilder();
  set vulcanAuthState(VulcanAuthStateBuilder vulcanAuthState) =>
      _$this._vulcanAuthState = vulcanAuthState;

  LibrusAuthStateBuilder _librusAuthState;
  LibrusAuthStateBuilder get librusAuthState =>
      _$this._librusAuthState ??= new LibrusAuthStateBuilder();
  set librusAuthState(LibrusAuthStateBuilder librusAuthState) =>
      _$this._librusAuthState = librusAuthState;

  String _currentSystem;
  String get currentSystem => _$this._currentSystem;
  set currentSystem(String currentSystem) =>
      _$this._currentSystem = currentSystem;

  VulcanStateBuilder _vulcanState;
  VulcanStateBuilder get vulcanState =>
      _$this._vulcanState ??= new VulcanStateBuilder();
  set vulcanState(VulcanStateBuilder vulcanState) =>
      _$this._vulcanState = vulcanState;

  TimetableStateBuilder _timetableState;
  TimetableStateBuilder get timetableState =>
      _$this._timetableState ??= new TimetableStateBuilder();
  set timetableState(TimetableStateBuilder timetableState) =>
      _$this._timetableState = timetableState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _vulcanAuthState = _$v.vulcanAuthState?.toBuilder();
      _librusAuthState = _$v.librusAuthState?.toBuilder();
      _currentSystem = _$v.currentSystem;
      _vulcanState = _$v.vulcanState?.toBuilder();
      _timetableState = _$v.timetableState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void updates(AppStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              vulcanAuthState: vulcanAuthState.build(),
              librusAuthState: librusAuthState.build(),
              currentSystem: currentSystem,
              vulcanState: vulcanState.build(),
              timetableState: timetableState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vulcanAuthState';
        vulcanAuthState.build();
        _$failedField = 'librusAuthState';
        librusAuthState.build();

        _$failedField = 'vulcanState';
        vulcanState.build();
        _$failedField = 'timetableState';
        timetableState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

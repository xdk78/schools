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
      'vulcanState',
      serializers.serialize(object.vulcanState,
          specifiedType: const FullType(VulcanState)),
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
        case 'vulcanState':
          result.vulcanState.replace(serializers.deserialize(value,
              specifiedType: const FullType(VulcanState)) as VulcanState);
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
  final VulcanState vulcanState;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.vulcanAuthState, this.librusAuthState, this.vulcanState})
      : super._() {
    if (vulcanAuthState == null) {
      throw new BuiltValueNullFieldError('AppState', 'vulcanAuthState');
    }
    if (librusAuthState == null) {
      throw new BuiltValueNullFieldError('AppState', 'librusAuthState');
    }
    if (vulcanState == null) {
      throw new BuiltValueNullFieldError('AppState', 'vulcanState');
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
        vulcanState == other.vulcanState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, vulcanAuthState.hashCode), librusAuthState.hashCode),
        vulcanState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('vulcanAuthState', vulcanAuthState)
          ..add('librusAuthState', librusAuthState)
          ..add('vulcanState', vulcanState))
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

  VulcanStateBuilder _vulcanState;
  VulcanStateBuilder get vulcanState =>
      _$this._vulcanState ??= new VulcanStateBuilder();
  set vulcanState(VulcanStateBuilder vulcanState) =>
      _$this._vulcanState = vulcanState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _vulcanAuthState = _$v.vulcanAuthState?.toBuilder();
      _librusAuthState = _$v.librusAuthState?.toBuilder();
      _vulcanState = _$v.vulcanState?.toBuilder();
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
              vulcanState: vulcanState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'vulcanAuthState';
        vulcanAuthState.build();
        _$failedField = 'librusAuthState';
        librusAuthState.build();
        _$failedField = 'vulcanState';
        vulcanState.build();
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

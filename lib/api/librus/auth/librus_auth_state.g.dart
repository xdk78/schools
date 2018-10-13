// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'librus_auth_state.dart';

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

Serializer<LibrusAuthState> _$librusAuthStateSerializer =
    new _$LibrusAuthStateSerializer();

class _$LibrusAuthStateSerializer
    implements StructuredSerializer<LibrusAuthState> {
  @override
  final Iterable<Type> types = const [LibrusAuthState, _$LibrusAuthState];
  @override
  final String wireName = 'LibrusAuthState';

  @override
  Iterable serialize(Serializers serializers, LibrusAuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accessToken != null) {
      result
        ..add('accessToken')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  LibrusAuthState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusAuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LibrusAuthState extends LibrusAuthState {
  @override
  final String accessToken;

  factory _$LibrusAuthState([void updates(LibrusAuthStateBuilder b)]) =>
      (new LibrusAuthStateBuilder()..update(updates)).build();

  _$LibrusAuthState._({this.accessToken}) : super._();

  @override
  LibrusAuthState rebuild(void updates(LibrusAuthStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusAuthStateBuilder toBuilder() =>
      new LibrusAuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusAuthState && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LibrusAuthState')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class LibrusAuthStateBuilder
    implements Builder<LibrusAuthState, LibrusAuthStateBuilder> {
  _$LibrusAuthState _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  LibrusAuthStateBuilder();

  LibrusAuthStateBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibrusAuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusAuthState;
  }

  @override
  void update(void updates(LibrusAuthStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusAuthState build() {
    final _$result = _$v ?? new _$LibrusAuthState._(accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

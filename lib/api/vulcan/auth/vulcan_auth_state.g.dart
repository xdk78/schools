// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vulcan_auth_state.dart';

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

Serializer<VulcanAuthState> _$vulcanAuthStateSerializer =
    new _$VulcanAuthStateSerializer();

class _$VulcanAuthStateSerializer
    implements StructuredSerializer<VulcanAuthState> {
  @override
  final Iterable<Type> types = const [VulcanAuthState, _$VulcanAuthState];
  @override
  final String wireName = 'VulcanAuthState';

  @override
  Iterable serialize(Serializers serializers, VulcanAuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.certificatePfx != null) {
      result
        ..add('certificatePfx')
        ..add(serializers.serialize(object.certificatePfx,
            specifiedType: const FullType(String)));
    }
    if (object.certificateKey != null) {
      result
        ..add('certificateKey')
        ..add(serializers.serialize(object.certificateKey,
            specifiedType: const FullType(String)));
    }
    if (object.apiEndpoint != null) {
      result
        ..add('apiEndpoint')
        ..add(serializers.serialize(object.apiEndpoint,
            specifiedType: const FullType(String)));
    }
    if (object.schoolKey != null) {
      result
        ..add('schoolKey')
        ..add(serializers.serialize(object.schoolKey,
            specifiedType: const FullType(String)));
    }
    if (object.schoolId != null) {
      result
        ..add('schoolId')
        ..add(serializers.serialize(object.schoolId,
            specifiedType: const FullType(int)));
    }
    if (object.studentId != null) {
      result
        ..add('studentId')
        ..add(serializers.serialize(object.studentId,
            specifiedType: const FullType(int)));
    }
    if (object.qualifyingPeriodId != null) {
      result
        ..add('qualifyingPeriodId')
        ..add(serializers.serialize(object.qualifyingPeriodId,
            specifiedType: const FullType(int)));
    }
    if (object.symbol != null) {
      result
        ..add('symbol')
        ..add(serializers.serialize(object.symbol,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  VulcanAuthState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VulcanAuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'certificatePfx':
          result.certificatePfx = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'certificateKey':
          result.certificateKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apiEndpoint':
          result.apiEndpoint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schoolKey':
          result.schoolKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schoolId':
          result.schoolId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'studentId':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qualifyingPeriodId':
          result.qualifyingPeriodId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VulcanAuthState extends VulcanAuthState {
  @override
  final String certificatePfx;
  @override
  final String certificateKey;
  @override
  final String apiEndpoint;
  @override
  final String schoolKey;
  @override
  final int schoolId;
  @override
  final int studentId;
  @override
  final int qualifyingPeriodId;
  @override
  final String symbol;
  @override
  final String name;

  factory _$VulcanAuthState([void updates(VulcanAuthStateBuilder b)]) =>
      (new VulcanAuthStateBuilder()..update(updates)).build();

  _$VulcanAuthState._(
      {this.certificatePfx,
      this.certificateKey,
      this.apiEndpoint,
      this.schoolKey,
      this.schoolId,
      this.studentId,
      this.qualifyingPeriodId,
      this.symbol,
      this.name})
      : super._();

  @override
  VulcanAuthState rebuild(void updates(VulcanAuthStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VulcanAuthStateBuilder toBuilder() =>
      new VulcanAuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VulcanAuthState &&
        certificatePfx == other.certificatePfx &&
        certificateKey == other.certificateKey &&
        apiEndpoint == other.apiEndpoint &&
        schoolKey == other.schoolKey &&
        schoolId == other.schoolId &&
        studentId == other.studentId &&
        qualifyingPeriodId == other.qualifyingPeriodId &&
        symbol == other.symbol &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, certificatePfx.hashCode),
                                    certificateKey.hashCode),
                                apiEndpoint.hashCode),
                            schoolKey.hashCode),
                        schoolId.hashCode),
                    studentId.hashCode),
                qualifyingPeriodId.hashCode),
            symbol.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VulcanAuthState')
          ..add('certificatePfx', certificatePfx)
          ..add('certificateKey', certificateKey)
          ..add('apiEndpoint', apiEndpoint)
          ..add('schoolKey', schoolKey)
          ..add('schoolId', schoolId)
          ..add('studentId', studentId)
          ..add('qualifyingPeriodId', qualifyingPeriodId)
          ..add('symbol', symbol)
          ..add('name', name))
        .toString();
  }
}

class VulcanAuthStateBuilder
    implements Builder<VulcanAuthState, VulcanAuthStateBuilder> {
  _$VulcanAuthState _$v;

  String _certificatePfx;
  String get certificatePfx => _$this._certificatePfx;
  set certificatePfx(String certificatePfx) =>
      _$this._certificatePfx = certificatePfx;

  String _certificateKey;
  String get certificateKey => _$this._certificateKey;
  set certificateKey(String certificateKey) =>
      _$this._certificateKey = certificateKey;

  String _apiEndpoint;
  String get apiEndpoint => _$this._apiEndpoint;
  set apiEndpoint(String apiEndpoint) => _$this._apiEndpoint = apiEndpoint;

  String _schoolKey;
  String get schoolKey => _$this._schoolKey;
  set schoolKey(String schoolKey) => _$this._schoolKey = schoolKey;

  int _schoolId;
  int get schoolId => _$this._schoolId;
  set schoolId(int schoolId) => _$this._schoolId = schoolId;

  int _studentId;
  int get studentId => _$this._studentId;
  set studentId(int studentId) => _$this._studentId = studentId;

  int _qualifyingPeriodId;
  int get qualifyingPeriodId => _$this._qualifyingPeriodId;
  set qualifyingPeriodId(int qualifyingPeriodId) =>
      _$this._qualifyingPeriodId = qualifyingPeriodId;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  VulcanAuthStateBuilder();

  VulcanAuthStateBuilder get _$this {
    if (_$v != null) {
      _certificatePfx = _$v.certificatePfx;
      _certificateKey = _$v.certificateKey;
      _apiEndpoint = _$v.apiEndpoint;
      _schoolKey = _$v.schoolKey;
      _schoolId = _$v.schoolId;
      _studentId = _$v.studentId;
      _qualifyingPeriodId = _$v.qualifyingPeriodId;
      _symbol = _$v.symbol;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VulcanAuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VulcanAuthState;
  }

  @override
  void update(void updates(VulcanAuthStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VulcanAuthState build() {
    final _$result = _$v ??
        new _$VulcanAuthState._(
            certificatePfx: certificatePfx,
            certificateKey: certificateKey,
            apiEndpoint: apiEndpoint,
            schoolKey: schoolKey,
            schoolId: schoolId,
            studentId: studentId,
            qualifyingPeriodId: qualifyingPeriodId,
            symbol: symbol,
            name: name);
    replace(_$result);
    return _$result;
  }
}

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
    final result = <Object>[
      'deviceId',
      serializers.serialize(object.deviceId,
          specifiedType: const FullType(String)),
      'deviceName',
      serializers.serialize(object.deviceName,
          specifiedType: const FullType(String)),
      'certificatePfx',
      serializers.serialize(object.certificatePfx,
          specifiedType: const FullType(String)),
      'certificateKey',
      serializers.serialize(object.certificateKey,
          specifiedType: const FullType(String)),
      'apiEndpoint',
      serializers.serialize(object.apiEndpoint,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'schoolKey',
      serializers.serialize(object.schoolKey,
          specifiedType: const FullType(String)),
    ];

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
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deviceName':
          result.deviceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schoolKey':
          result.schoolKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VulcanAuthState extends VulcanAuthState {
  @override
  final String deviceId;
  @override
  final String deviceName;
  @override
  final String certificatePfx;
  @override
  final String certificateKey;
  @override
  final String apiEndpoint;
  @override
  final String email;
  @override
  final String schoolKey;

  factory _$VulcanAuthState([void updates(VulcanAuthStateBuilder b)]) =>
      (new VulcanAuthStateBuilder()..update(updates)).build();

  _$VulcanAuthState._(
      {this.deviceId,
      this.deviceName,
      this.certificatePfx,
      this.certificateKey,
      this.apiEndpoint,
      this.email,
      this.schoolKey})
      : super._() {
    if (deviceId == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'deviceId');
    }
    if (deviceName == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'deviceName');
    }
    if (certificatePfx == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'certificatePfx');
    }
    if (certificateKey == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'certificateKey');
    }
    if (apiEndpoint == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'apiEndpoint');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'email');
    }
    if (schoolKey == null) {
      throw new BuiltValueNullFieldError('VulcanAuthState', 'schoolKey');
    }
  }

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
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        certificatePfx == other.certificatePfx &&
        certificateKey == other.certificateKey &&
        apiEndpoint == other.apiEndpoint &&
        email == other.email &&
        schoolKey == other.schoolKey;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, deviceId.hashCode), deviceName.hashCode),
                        certificatePfx.hashCode),
                    certificateKey.hashCode),
                apiEndpoint.hashCode),
            email.hashCode),
        schoolKey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VulcanAuthState')
          ..add('deviceId', deviceId)
          ..add('deviceName', deviceName)
          ..add('certificatePfx', certificatePfx)
          ..add('certificateKey', certificateKey)
          ..add('apiEndpoint', apiEndpoint)
          ..add('email', email)
          ..add('schoolKey', schoolKey))
        .toString();
  }
}

class VulcanAuthStateBuilder
    implements Builder<VulcanAuthState, VulcanAuthStateBuilder> {
  _$VulcanAuthState _$v;

  String _deviceId;
  String get deviceId => _$this._deviceId;
  set deviceId(String deviceId) => _$this._deviceId = deviceId;

  String _deviceName;
  String get deviceName => _$this._deviceName;
  set deviceName(String deviceName) => _$this._deviceName = deviceName;

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

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _schoolKey;
  String get schoolKey => _$this._schoolKey;
  set schoolKey(String schoolKey) => _$this._schoolKey = schoolKey;

  VulcanAuthStateBuilder();

  VulcanAuthStateBuilder get _$this {
    if (_$v != null) {
      _deviceId = _$v.deviceId;
      _deviceName = _$v.deviceName;
      _certificatePfx = _$v.certificatePfx;
      _certificateKey = _$v.certificateKey;
      _apiEndpoint = _$v.apiEndpoint;
      _email = _$v.email;
      _schoolKey = _$v.schoolKey;
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
            deviceId: deviceId,
            deviceName: deviceName,
            certificatePfx: certificatePfx,
            certificateKey: certificateKey,
            apiEndpoint: apiEndpoint,
            email: email,
            schoolKey: schoolKey);
    replace(_$result);
    return _$result;
  }
}

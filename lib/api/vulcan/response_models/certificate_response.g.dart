// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_response.dart';

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

Serializer<CertificateResponse> _$certificateResponseSerializer =
    new _$CertificateResponseSerializer();
Serializer<CertificateResponseTokenCertificate>
    _$certificateResponseTokenCertificateSerializer =
    new _$CertificateResponseTokenCertificateSerializer();

class _$CertificateResponseSerializer
    implements StructuredSerializer<CertificateResponse> {
  @override
  final Iterable<Type> types = const [
    CertificateResponse,
    _$CertificateResponse
  ];
  @override
  final String wireName = 'CertificateResponse';

  @override
  Iterable serialize(Serializers serializers, CertificateResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'TokenCert',
      serializers.serialize(object.tokenCert,
          specifiedType: const FullType(CertificateResponseTokenCertificate)),
    ];

    return result;
  }

  @override
  CertificateResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CertificateResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'TokenCert':
          result.tokenCert.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CertificateResponseTokenCertificate))
              as CertificateResponseTokenCertificate);
          break;
      }
    }

    return result.build();
  }
}

class _$CertificateResponseTokenCertificateSerializer
    implements StructuredSerializer<CertificateResponseTokenCertificate> {
  @override
  final Iterable<Type> types = const [
    CertificateResponseTokenCertificate,
    _$CertificateResponseTokenCertificate
  ];
  @override
  final String wireName = 'CertificateResponseTokenCertificate';

  @override
  Iterable serialize(
      Serializers serializers, CertificateResponseTokenCertificate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'CertyfikatKlucz',
      serializers.serialize(object.certificateKey,
          specifiedType: const FullType(String)),
      'CertyfikatPfx',
      serializers.serialize(object.certificatePfx,
          specifiedType: const FullType(String)),
      'UzytkownikLogin',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CertificateResponseTokenCertificate deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CertificateResponseTokenCertificateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'CertyfikatKlucz':
          result.certificateKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CertyfikatPfx':
          result.certificatePfx = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'UzytkownikLogin':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CertificateResponse extends CertificateResponse {
  @override
  final CertificateResponseTokenCertificate tokenCert;

  factory _$CertificateResponse([void updates(CertificateResponseBuilder b)]) =>
      (new CertificateResponseBuilder()..update(updates)).build();

  _$CertificateResponse._({this.tokenCert}) : super._() {
    if (tokenCert == null) {
      throw new BuiltValueNullFieldError('CertificateResponse', 'tokenCert');
    }
  }

  @override
  CertificateResponse rebuild(void updates(CertificateResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CertificateResponseBuilder toBuilder() =>
      new CertificateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CertificateResponse && tokenCert == other.tokenCert;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tokenCert.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CertificateResponse')
          ..add('tokenCert', tokenCert))
        .toString();
  }
}

class CertificateResponseBuilder
    implements Builder<CertificateResponse, CertificateResponseBuilder> {
  _$CertificateResponse _$v;

  CertificateResponseTokenCertificateBuilder _tokenCert;
  CertificateResponseTokenCertificateBuilder get tokenCert =>
      _$this._tokenCert ??= new CertificateResponseTokenCertificateBuilder();
  set tokenCert(CertificateResponseTokenCertificateBuilder tokenCert) =>
      _$this._tokenCert = tokenCert;

  CertificateResponseBuilder();

  CertificateResponseBuilder get _$this {
    if (_$v != null) {
      _tokenCert = _$v.tokenCert?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CertificateResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CertificateResponse;
  }

  @override
  void update(void updates(CertificateResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CertificateResponse build() {
    _$CertificateResponse _$result;
    try {
      _$result =
          _$v ?? new _$CertificateResponse._(tokenCert: tokenCert.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tokenCert';
        tokenCert.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CertificateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CertificateResponseTokenCertificate
    extends CertificateResponseTokenCertificate {
  @override
  final String certificateKey;
  @override
  final String certificatePfx;
  @override
  final String identifier;

  factory _$CertificateResponseTokenCertificate(
          [void updates(CertificateResponseTokenCertificateBuilder b)]) =>
      (new CertificateResponseTokenCertificateBuilder()..update(updates))
          .build();

  _$CertificateResponseTokenCertificate._(
      {this.certificateKey, this.certificatePfx, this.identifier})
      : super._() {
    if (certificateKey == null) {
      throw new BuiltValueNullFieldError(
          'CertificateResponseTokenCertificate', 'certificateKey');
    }
    if (certificatePfx == null) {
      throw new BuiltValueNullFieldError(
          'CertificateResponseTokenCertificate', 'certificatePfx');
    }
    if (identifier == null) {
      throw new BuiltValueNullFieldError(
          'CertificateResponseTokenCertificate', 'identifier');
    }
  }

  @override
  CertificateResponseTokenCertificate rebuild(
          void updates(CertificateResponseTokenCertificateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CertificateResponseTokenCertificateBuilder toBuilder() =>
      new CertificateResponseTokenCertificateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CertificateResponseTokenCertificate &&
        certificateKey == other.certificateKey &&
        certificatePfx == other.certificatePfx &&
        identifier == other.identifier;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, certificateKey.hashCode), certificatePfx.hashCode),
        identifier.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CertificateResponseTokenCertificate')
          ..add('certificateKey', certificateKey)
          ..add('certificatePfx', certificatePfx)
          ..add('identifier', identifier))
        .toString();
  }
}

class CertificateResponseTokenCertificateBuilder
    implements
        Builder<CertificateResponseTokenCertificate,
            CertificateResponseTokenCertificateBuilder> {
  _$CertificateResponseTokenCertificate _$v;

  String _certificateKey;
  String get certificateKey => _$this._certificateKey;
  set certificateKey(String certificateKey) =>
      _$this._certificateKey = certificateKey;

  String _certificatePfx;
  String get certificatePfx => _$this._certificatePfx;
  set certificatePfx(String certificatePfx) =>
      _$this._certificatePfx = certificatePfx;

  String _identifier;
  String get identifier => _$this._identifier;
  set identifier(String identifier) => _$this._identifier = identifier;

  CertificateResponseTokenCertificateBuilder();

  CertificateResponseTokenCertificateBuilder get _$this {
    if (_$v != null) {
      _certificateKey = _$v.certificateKey;
      _certificatePfx = _$v.certificatePfx;
      _identifier = _$v.identifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CertificateResponseTokenCertificate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CertificateResponseTokenCertificate;
  }

  @override
  void update(void updates(CertificateResponseTokenCertificateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CertificateResponseTokenCertificate build() {
    final _$result = _$v ??
        new _$CertificateResponseTokenCertificate._(
            certificateKey: certificateKey,
            certificatePfx: certificatePfx,
            identifier: identifier);
    replace(_$result);
    return _$result;
  }
}

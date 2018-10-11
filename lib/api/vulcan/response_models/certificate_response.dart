import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'certificate_response.g.dart';

abstract class CertificateResponse implements Built<CertificateResponse, CertificateResponseBuilder> {
  @BuiltValueField(wireName: 'TokenCert')
  CertificateResponseTokenCertificate get tokenCert;
  
  factory CertificateResponse([updates(CertificateResponseBuilder b)]) = _$CertificateResponse;

  CertificateResponse._();
  static Serializer<CertificateResponse> get serializer => _$certificateResponseSerializer;
}

abstract class CertificateResponseTokenCertificate implements Built<CertificateResponseTokenCertificate, CertificateResponseTokenCertificateBuilder> {
  CertificateResponseTokenCertificate._();

  @BuiltValueField(wireName: 'CertyfikatKlucz')
  String get certificateKey;

  @BuiltValueField(wireName: 'CertyfikatPfx')
  String get certificatePfx;
  
  @BuiltValueField(wireName: 'UzytkownikLogin')
  String get identifier;

  factory CertificateResponseTokenCertificate([updates(CertificateResponseTokenCertificateBuilder b)]) = _$CertificateResponseTokenCertificate;
  static Serializer<CertificateResponseTokenCertificate> get serializer => _$certificateResponseTokenCertificateSerializer;
}
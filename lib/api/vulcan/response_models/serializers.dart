import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/vulcan/response_models/certificate_response.dart';
import 'package:schools/api/vulcan/response_models/students_list_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  CertificateResponse,
  StudentsListResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

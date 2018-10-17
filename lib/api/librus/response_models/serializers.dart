import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/librus/response_models/accounts_response.dart';
import 'package:schools/api/librus/response_models/timetable_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [AccountsResponse, TimetableResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

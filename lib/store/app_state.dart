import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';
import 'package:schools/api/vulcan/state.dart';
import 'package:schools/store/timetable/timetable_state.dart';
import 'package:schools/api/librus/auth/librus_auth_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  VulcanAuthState get vulcanAuthState;
  LibrusAuthState get librusAuthState;

  String get currentSystem;
  VulcanState get vulcanState;

  TimetableState get timetableState;

  factory AppState() {
    return _$AppState._(
        vulcanAuthState: VulcanAuthState().rebuild((b) => b
          ..name = ''
          ..certificateKey = ''
          ..certificatePfx = ''
          ..apiEndpoint = ''
          ..schoolKey = null
          ..symbol = ''),
        currentSystem: 'vulcan',
        vulcanState: VulcanState(),
        timetableState: TimetableState.initialState(),
        librusAuthState: LibrusAuthState().rebuild((b) => b..accessToken = ''));
  }

  AppState._();
  static Serializer<AppState> get serializer => _$appStateSerializer;
}

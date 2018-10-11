import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  VulcanAuthState get vulcanAuthState;

  factory AppState() {
    return _$AppState._(
        vulcanAuthState: VulcanAuthState().rebuild((b) => b..name = 'elo'));
  }

  AppState._();
  static Serializer<AppState> get serializer => _$appStateSerializer;
}

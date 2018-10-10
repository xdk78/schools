import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  bool get isLoading;
  
  factory AppState() {
    return _$AppState._(isLoading: false);
  }

  AppState._();
  static Serializer<AppState> get serializer => _$appStateSerializer;
}
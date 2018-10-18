import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:schools/models/lesson.dart';

part 'timetable_state.g.dart';

abstract class TimetableState
    implements Built<TimetableState, TimetableStateBuilder> {
  @nullable
  BuiltList<Lesson> get monday;
  @nullable
  BuiltList<Lesson> get tuesday;
  @nullable
  BuiltList<Lesson> get wednesday;

  @nullable
  BuiltList<Lesson> get thursday;

  @nullable
  BuiltList<Lesson> get friday;

  factory TimetableState([updates(TimetableStateBuilder b)]) = _$TimetableState;
  factory TimetableState.initialState() {
    return _$TimetableState._(
      monday: BuiltList.from([]),
      tuesday: BuiltList.from([]),
      wednesday: BuiltList.from([]),
      thursday: BuiltList.from([]),
      friday: BuiltList.from([]),
    );
  }

  TimetableState._();
  static Serializer<TimetableState> get serializer =>
      _$timetableStateSerializer;
}

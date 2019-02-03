// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

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

Serializer<VulcanState> _$vulcanStateSerializer = new _$VulcanStateSerializer();
Serializer<VulcanDictonaryState> _$vulcanDictonaryStateSerializer =
    new _$VulcanDictonaryStateSerializer();

class _$VulcanStateSerializer implements StructuredSerializer<VulcanState> {
  @override
  final Iterable<Type> types = const [VulcanState, _$VulcanState];
  @override
  final String wireName = 'VulcanState';

  @override
  Iterable serialize(Serializers serializers, VulcanState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'dictonaryState',
      serializers.serialize(object.dictonaryState,
          specifiedType: const FullType(VulcanDictonaryState)),
    ];

    return result;
  }

  @override
  VulcanState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VulcanStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dictonaryState':
          result.dictonaryState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(VulcanDictonaryState))
              as VulcanDictonaryState);
          break;
      }
    }

    return result.build();
  }
}

class _$VulcanDictonaryStateSerializer
    implements StructuredSerializer<VulcanDictonaryState> {
  @override
  final Iterable<Type> types = const [
    VulcanDictonaryState,
    _$VulcanDictonaryState
  ];
  @override
  final String wireName = 'VulcanDictonaryState';

  @override
  Iterable serialize(Serializers serializers, VulcanDictonaryState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'teachers',
      serializers.serialize(object.teachers,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TeacherDictonary)])),
      'workers',
      serializers.serialize(object.workers,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WorkerDictonary)])),
      'subjects',
      serializers.serialize(object.subjects,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SubjectDictonary)])),
      'lessonTimes',
      serializers.serialize(object.lessonTimes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LessonTimeDictonary)])),
      'markCategories',
      serializers.serialize(object.markCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MarkCategoryDictonary)])),
      'warningCategories',
      serializers.serialize(object.warningCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WarningCategoryDictonary)])),
      'attendanceCategories',
      serializers.serialize(object.attendanceCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttendanceCategoryDictonary)])),
      'attendanceTypes',
      serializers.serialize(object.attendanceTypes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttendanceTypeDictonary)])),
      'synced',
      serializers.serialize(object.synced, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  VulcanDictonaryState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VulcanDictonaryStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'teachers':
          result.teachers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeacherDictonary)]))
              as BuiltList);
          break;
        case 'workers':
          result.workers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WorkerDictonary)]))
              as BuiltList);
          break;
        case 'subjects':
          result.subjects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubjectDictonary)]))
              as BuiltList);
          break;
        case 'lessonTimes':
          result.lessonTimes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LessonTimeDictonary)]))
              as BuiltList);
          break;
        case 'markCategories':
          result.markCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MarkCategoryDictonary)]))
              as BuiltList);
          break;
        case 'warningCategories':
          result.warningCategories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(WarningCategoryDictonary)
              ])) as BuiltList);
          break;
        case 'attendanceCategories':
          result.attendanceCategories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AttendanceCategoryDictonary)
              ])) as BuiltList);
          break;
        case 'attendanceTypes':
          result.attendanceTypes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AttendanceTypeDictonary)
              ])) as BuiltList);
          break;
        case 'synced':
          result.synced = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$VulcanState extends VulcanState {
  @override
  final VulcanDictonaryState dictonaryState;

  factory _$VulcanState([void updates(VulcanStateBuilder b)]) =>
      (new VulcanStateBuilder()..update(updates)).build();

  _$VulcanState._({this.dictonaryState}) : super._() {
    if (dictonaryState == null) {
      throw new BuiltValueNullFieldError('VulcanState', 'dictonaryState');
    }
  }

  @override
  VulcanState rebuild(void updates(VulcanStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VulcanStateBuilder toBuilder() => new VulcanStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VulcanState && dictonaryState == other.dictonaryState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, dictonaryState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VulcanState')
          ..add('dictonaryState', dictonaryState))
        .toString();
  }
}

class VulcanStateBuilder implements Builder<VulcanState, VulcanStateBuilder> {
  _$VulcanState _$v;

  VulcanDictonaryStateBuilder _dictonaryState;
  VulcanDictonaryStateBuilder get dictonaryState =>
      _$this._dictonaryState ??= new VulcanDictonaryStateBuilder();
  set dictonaryState(VulcanDictonaryStateBuilder dictonaryState) =>
      _$this._dictonaryState = dictonaryState;

  VulcanStateBuilder();

  VulcanStateBuilder get _$this {
    if (_$v != null) {
      _dictonaryState = _$v.dictonaryState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VulcanState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VulcanState;
  }

  @override
  void update(void updates(VulcanStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VulcanState build() {
    _$VulcanState _$result;
    try {
      _$result =
          _$v ?? new _$VulcanState._(dictonaryState: dictonaryState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dictonaryState';
        dictonaryState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VulcanState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VulcanDictonaryState extends VulcanDictonaryState {
  @override
  final BuiltList<TeacherDictonary> teachers;
  @override
  final BuiltList<WorkerDictonary> workers;
  @override
  final BuiltList<SubjectDictonary> subjects;
  @override
  final BuiltList<LessonTimeDictonary> lessonTimes;
  @override
  final BuiltList<MarkCategoryDictonary> markCategories;
  @override
  final BuiltList<WarningCategoryDictonary> warningCategories;
  @override
  final BuiltList<AttendanceCategoryDictonary> attendanceCategories;
  @override
  final BuiltList<AttendanceTypeDictonary> attendanceTypes;
  @override
  final bool synced;

  factory _$VulcanDictonaryState(
          [void updates(VulcanDictonaryStateBuilder b)]) =>
      (new VulcanDictonaryStateBuilder()..update(updates)).build();

  _$VulcanDictonaryState._(
      {this.teachers,
      this.workers,
      this.subjects,
      this.lessonTimes,
      this.markCategories,
      this.warningCategories,
      this.attendanceCategories,
      this.attendanceTypes,
      this.synced})
      : super._() {
    if (teachers == null) {
      throw new BuiltValueNullFieldError('VulcanDictonaryState', 'teachers');
    }
    if (workers == null) {
      throw new BuiltValueNullFieldError('VulcanDictonaryState', 'workers');
    }
    if (subjects == null) {
      throw new BuiltValueNullFieldError('VulcanDictonaryState', 'subjects');
    }
    if (lessonTimes == null) {
      throw new BuiltValueNullFieldError('VulcanDictonaryState', 'lessonTimes');
    }
    if (markCategories == null) {
      throw new BuiltValueNullFieldError(
          'VulcanDictonaryState', 'markCategories');
    }
    if (warningCategories == null) {
      throw new BuiltValueNullFieldError(
          'VulcanDictonaryState', 'warningCategories');
    }
    if (attendanceCategories == null) {
      throw new BuiltValueNullFieldError(
          'VulcanDictonaryState', 'attendanceCategories');
    }
    if (attendanceTypes == null) {
      throw new BuiltValueNullFieldError(
          'VulcanDictonaryState', 'attendanceTypes');
    }
    if (synced == null) {
      throw new BuiltValueNullFieldError('VulcanDictonaryState', 'synced');
    }
  }

  @override
  VulcanDictonaryState rebuild(void updates(VulcanDictonaryStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VulcanDictonaryStateBuilder toBuilder() =>
      new VulcanDictonaryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VulcanDictonaryState &&
        teachers == other.teachers &&
        workers == other.workers &&
        subjects == other.subjects &&
        lessonTimes == other.lessonTimes &&
        markCategories == other.markCategories &&
        warningCategories == other.warningCategories &&
        attendanceCategories == other.attendanceCategories &&
        attendanceTypes == other.attendanceTypes &&
        synced == other.synced;
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
                                $jc($jc(0, teachers.hashCode),
                                    workers.hashCode),
                                subjects.hashCode),
                            lessonTimes.hashCode),
                        markCategories.hashCode),
                    warningCategories.hashCode),
                attendanceCategories.hashCode),
            attendanceTypes.hashCode),
        synced.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VulcanDictonaryState')
          ..add('teachers', teachers)
          ..add('workers', workers)
          ..add('subjects', subjects)
          ..add('lessonTimes', lessonTimes)
          ..add('markCategories', markCategories)
          ..add('warningCategories', warningCategories)
          ..add('attendanceCategories', attendanceCategories)
          ..add('attendanceTypes', attendanceTypes)
          ..add('synced', synced))
        .toString();
  }
}

class VulcanDictonaryStateBuilder
    implements Builder<VulcanDictonaryState, VulcanDictonaryStateBuilder> {
  _$VulcanDictonaryState _$v;

  ListBuilder<TeacherDictonary> _teachers;
  ListBuilder<TeacherDictonary> get teachers =>
      _$this._teachers ??= new ListBuilder<TeacherDictonary>();
  set teachers(ListBuilder<TeacherDictonary> teachers) =>
      _$this._teachers = teachers;

  ListBuilder<WorkerDictonary> _workers;
  ListBuilder<WorkerDictonary> get workers =>
      _$this._workers ??= new ListBuilder<WorkerDictonary>();
  set workers(ListBuilder<WorkerDictonary> workers) =>
      _$this._workers = workers;

  ListBuilder<SubjectDictonary> _subjects;
  ListBuilder<SubjectDictonary> get subjects =>
      _$this._subjects ??= new ListBuilder<SubjectDictonary>();
  set subjects(ListBuilder<SubjectDictonary> subjects) =>
      _$this._subjects = subjects;

  ListBuilder<LessonTimeDictonary> _lessonTimes;
  ListBuilder<LessonTimeDictonary> get lessonTimes =>
      _$this._lessonTimes ??= new ListBuilder<LessonTimeDictonary>();
  set lessonTimes(ListBuilder<LessonTimeDictonary> lessonTimes) =>
      _$this._lessonTimes = lessonTimes;

  ListBuilder<MarkCategoryDictonary> _markCategories;
  ListBuilder<MarkCategoryDictonary> get markCategories =>
      _$this._markCategories ??= new ListBuilder<MarkCategoryDictonary>();
  set markCategories(ListBuilder<MarkCategoryDictonary> markCategories) =>
      _$this._markCategories = markCategories;

  ListBuilder<WarningCategoryDictonary> _warningCategories;
  ListBuilder<WarningCategoryDictonary> get warningCategories =>
      _$this._warningCategories ??= new ListBuilder<WarningCategoryDictonary>();
  set warningCategories(
          ListBuilder<WarningCategoryDictonary> warningCategories) =>
      _$this._warningCategories = warningCategories;

  ListBuilder<AttendanceCategoryDictonary> _attendanceCategories;
  ListBuilder<AttendanceCategoryDictonary> get attendanceCategories =>
      _$this._attendanceCategories ??=
          new ListBuilder<AttendanceCategoryDictonary>();
  set attendanceCategories(
          ListBuilder<AttendanceCategoryDictonary> attendanceCategories) =>
      _$this._attendanceCategories = attendanceCategories;

  ListBuilder<AttendanceTypeDictonary> _attendanceTypes;
  ListBuilder<AttendanceTypeDictonary> get attendanceTypes =>
      _$this._attendanceTypes ??= new ListBuilder<AttendanceTypeDictonary>();
  set attendanceTypes(ListBuilder<AttendanceTypeDictonary> attendanceTypes) =>
      _$this._attendanceTypes = attendanceTypes;

  bool _synced;
  bool get synced => _$this._synced;
  set synced(bool synced) => _$this._synced = synced;

  VulcanDictonaryStateBuilder();

  VulcanDictonaryStateBuilder get _$this {
    if (_$v != null) {
      _teachers = _$v.teachers?.toBuilder();
      _workers = _$v.workers?.toBuilder();
      _subjects = _$v.subjects?.toBuilder();
      _lessonTimes = _$v.lessonTimes?.toBuilder();
      _markCategories = _$v.markCategories?.toBuilder();
      _warningCategories = _$v.warningCategories?.toBuilder();
      _attendanceCategories = _$v.attendanceCategories?.toBuilder();
      _attendanceTypes = _$v.attendanceTypes?.toBuilder();
      _synced = _$v.synced;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VulcanDictonaryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VulcanDictonaryState;
  }

  @override
  void update(void updates(VulcanDictonaryStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VulcanDictonaryState build() {
    _$VulcanDictonaryState _$result;
    try {
      _$result = _$v ??
          new _$VulcanDictonaryState._(
              teachers: teachers.build(),
              workers: workers.build(),
              subjects: subjects.build(),
              lessonTimes: lessonTimes.build(),
              markCategories: markCategories.build(),
              warningCategories: warningCategories.build(),
              attendanceCategories: attendanceCategories.build(),
              attendanceTypes: attendanceTypes.build(),
              synced: synced);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teachers';
        teachers.build();
        _$failedField = 'workers';
        workers.build();
        _$failedField = 'subjects';
        subjects.build();
        _$failedField = 'lessonTimes';
        lessonTimes.build();
        _$failedField = 'markCategories';
        markCategories.build();
        _$failedField = 'warningCategories';
        warningCategories.build();
        _$failedField = 'attendanceCategories';
        attendanceCategories.build();
        _$failedField = 'attendanceTypes';
        attendanceTypes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VulcanDictonaryState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

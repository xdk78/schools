// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictonary_response.dart';

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

Serializer<DictonaryResponse> _$dictonaryResponseSerializer =
    new _$DictonaryResponseSerializer();
Serializer<DictonaryData> _$dictonaryDataSerializer =
    new _$DictonaryDataSerializer();

class _$DictonaryResponseSerializer
    implements StructuredSerializer<DictonaryResponse> {
  @override
  final Iterable<Type> types = const [DictonaryResponse, _$DictonaryResponse];
  @override
  final String wireName = 'DictonaryResponse';

  @override
  Iterable serialize(Serializers serializers, DictonaryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DictonaryData)),
    ];

    return result;
  }

  @override
  DictonaryResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DictonaryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(DictonaryData)) as DictonaryData);
          break;
      }
    }

    return result.build();
  }
}

class _$DictonaryDataSerializer implements StructuredSerializer<DictonaryData> {
  @override
  final Iterable<Type> types = const [DictonaryData, _$DictonaryData];
  @override
  final String wireName = 'DictonaryData';

  @override
  Iterable serialize(Serializers serializers, DictonaryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Nauczyciele',
      serializers.serialize(object.teachers,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TeacherDictonary)])),
      'Pracownicy',
      serializers.serialize(object.workers,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WorkerDictonary)])),
      'Przedmioty',
      serializers.serialize(object.subjects,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SubjectDictonary)])),
      'PoryLekcji',
      serializers.serialize(object.lessonTimes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LessonTimeDictonary)])),
      'KategorieOcen',
      serializers.serialize(object.markCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MarkCategoryDictonary)])),
      'KategorieUwag',
      serializers.serialize(object.warningCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WarningCategoryDictonary)])),
      'KategorieFrekwencji',
      serializers.serialize(object.attendanceCategories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttendanceCategoryDictonary)])),
      'TypyFrekwencji',
      serializers.serialize(object.attendanceTypes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttendanceTypeDictonary)])),
    ];

    return result;
  }

  @override
  DictonaryData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DictonaryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Nauczyciele':
          result.teachers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TeacherDictonary)]))
              as BuiltList);
          break;
        case 'Pracownicy':
          result.workers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WorkerDictonary)]))
              as BuiltList);
          break;
        case 'Przedmioty':
          result.subjects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubjectDictonary)]))
              as BuiltList);
          break;
        case 'PoryLekcji':
          result.lessonTimes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LessonTimeDictonary)]))
              as BuiltList);
          break;
        case 'KategorieOcen':
          result.markCategories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MarkCategoryDictonary)]))
              as BuiltList);
          break;
        case 'KategorieUwag':
          result.warningCategories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(WarningCategoryDictonary)
              ])) as BuiltList);
          break;
        case 'KategorieFrekwencji':
          result.attendanceCategories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AttendanceCategoryDictonary)
              ])) as BuiltList);
          break;
        case 'TypyFrekwencji':
          result.attendanceTypes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AttendanceTypeDictonary)
              ])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DictonaryResponse extends DictonaryResponse {
  @override
  final DictonaryData data;

  factory _$DictonaryResponse([void updates(DictonaryResponseBuilder b)]) =>
      (new DictonaryResponseBuilder()..update(updates)).build();

  _$DictonaryResponse._({this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('DictonaryResponse', 'data');
    }
  }

  @override
  DictonaryResponse rebuild(void updates(DictonaryResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DictonaryResponseBuilder toBuilder() =>
      new DictonaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictonaryResponse && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DictonaryResponse')..add('data', data))
        .toString();
  }
}

class DictonaryResponseBuilder
    implements Builder<DictonaryResponse, DictonaryResponseBuilder> {
  _$DictonaryResponse _$v;

  DictonaryDataBuilder _data;
  DictonaryDataBuilder get data => _$this._data ??= new DictonaryDataBuilder();
  set data(DictonaryDataBuilder data) => _$this._data = data;

  DictonaryResponseBuilder();

  DictonaryResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DictonaryResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DictonaryResponse;
  }

  @override
  void update(void updates(DictonaryResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DictonaryResponse build() {
    _$DictonaryResponse _$result;
    try {
      _$result = _$v ?? new _$DictonaryResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DictonaryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DictonaryData extends DictonaryData {
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

  factory _$DictonaryData([void updates(DictonaryDataBuilder b)]) =>
      (new DictonaryDataBuilder()..update(updates)).build();

  _$DictonaryData._(
      {this.teachers,
      this.workers,
      this.subjects,
      this.lessonTimes,
      this.markCategories,
      this.warningCategories,
      this.attendanceCategories,
      this.attendanceTypes})
      : super._() {
    if (teachers == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'teachers');
    }
    if (workers == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'workers');
    }
    if (subjects == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'subjects');
    }
    if (lessonTimes == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'lessonTimes');
    }
    if (markCategories == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'markCategories');
    }
    if (warningCategories == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'warningCategories');
    }
    if (attendanceCategories == null) {
      throw new BuiltValueNullFieldError(
          'DictonaryData', 'attendanceCategories');
    }
    if (attendanceTypes == null) {
      throw new BuiltValueNullFieldError('DictonaryData', 'attendanceTypes');
    }
  }

  @override
  DictonaryData rebuild(void updates(DictonaryDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DictonaryDataBuilder toBuilder() => new DictonaryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DictonaryData &&
        teachers == other.teachers &&
        workers == other.workers &&
        subjects == other.subjects &&
        lessonTimes == other.lessonTimes &&
        markCategories == other.markCategories &&
        warningCategories == other.warningCategories &&
        attendanceCategories == other.attendanceCategories &&
        attendanceTypes == other.attendanceTypes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, teachers.hashCode), workers.hashCode),
                            subjects.hashCode),
                        lessonTimes.hashCode),
                    markCategories.hashCode),
                warningCategories.hashCode),
            attendanceCategories.hashCode),
        attendanceTypes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DictonaryData')
          ..add('teachers', teachers)
          ..add('workers', workers)
          ..add('subjects', subjects)
          ..add('lessonTimes', lessonTimes)
          ..add('markCategories', markCategories)
          ..add('warningCategories', warningCategories)
          ..add('attendanceCategories', attendanceCategories)
          ..add('attendanceTypes', attendanceTypes))
        .toString();
  }
}

class DictonaryDataBuilder
    implements Builder<DictonaryData, DictonaryDataBuilder> {
  _$DictonaryData _$v;

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

  DictonaryDataBuilder();

  DictonaryDataBuilder get _$this {
    if (_$v != null) {
      _teachers = _$v.teachers?.toBuilder();
      _workers = _$v.workers?.toBuilder();
      _subjects = _$v.subjects?.toBuilder();
      _lessonTimes = _$v.lessonTimes?.toBuilder();
      _markCategories = _$v.markCategories?.toBuilder();
      _warningCategories = _$v.warningCategories?.toBuilder();
      _attendanceCategories = _$v.attendanceCategories?.toBuilder();
      _attendanceTypes = _$v.attendanceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DictonaryData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DictonaryData;
  }

  @override
  void update(void updates(DictonaryDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DictonaryData build() {
    _$DictonaryData _$result;
    try {
      _$result = _$v ??
          new _$DictonaryData._(
              teachers: teachers.build(),
              workers: workers.build(),
              subjects: subjects.build(),
              lessonTimes: lessonTimes.build(),
              markCategories: markCategories.build(),
              warningCategories: warningCategories.build(),
              attendanceCategories: attendanceCategories.build(),
              attendanceTypes: attendanceTypes.build());
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
            'DictonaryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

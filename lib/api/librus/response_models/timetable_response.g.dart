// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_response.dart';

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

Serializer<LessonsResponse> _$lessonsResponseSerializer =
    new _$LessonsResponseSerializer();
Serializer<LessonResponse> _$lessonResponseSerializer =
    new _$LessonResponseSerializer();
Serializer<ClassroomResponse> _$classroomResponseSerializer =
    new _$ClassroomResponseSerializer();
Serializer<TimetableEntryResponse> _$timetableEntryResponseSerializer =
    new _$TimetableEntryResponseSerializer();
Serializer<SubjectResponse> _$subjectResponseSerializer =
    new _$SubjectResponseSerializer();
Serializer<TeacherResponse> _$teacherResponseSerializer =
    new _$TeacherResponseSerializer();
Serializer<ClassResponse> _$classResponseSerializer =
    new _$ClassResponseSerializer();

class _$LessonsResponseSerializer
    implements StructuredSerializer<LessonsResponse> {
  @override
  final Iterable<Type> types = const [LessonsResponse, _$LessonsResponse];
  @override
  final String wireName = 'LessonsResponse';

  @override
  Iterable serialize(Serializers serializers, LessonsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Lesson',
      serializers.serialize(object.lesson,
          specifiedType: const FullType(SubjectResponse)),
      'Classroom',
      serializers.serialize(object.classroom,
          specifiedType: const FullType(ClassroomResponse)),
      'DateFrom',
      serializers.serialize(object.dateFrom,
          specifiedType: const FullType(String)),
      'DateTo',
      serializers.serialize(object.dateTo,
          specifiedType: const FullType(String)),
      'LessonNo',
      serializers.serialize(object.lessonNumber,
          specifiedType: const FullType(num)),
      'TimetableEntry',
      serializers.serialize(object.timetableEntry,
          specifiedType: const FullType(TimetableEntryResponse)),
      'DayNo',
      serializers.serialize(object.dayNumber,
          specifiedType: const FullType(String)),
      'Subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(SubjectResponse)),
      'Teacher',
      serializers.serialize(object.teacher,
          specifiedType: const FullType(TeacherResponse)),
      'Class',
      serializers.serialize(object.classres,
          specifiedType: const FullType(ClassResponse)),
      'IsSubstitutionClass',
      serializers.serialize(object.isSubstitutionClass,
          specifiedType: const FullType(bool)),
      'IsCanceled',
      serializers.serialize(object.isCanceled,
          specifiedType: const FullType(bool)),
      'SubstitutionNote',
      serializers.serialize(object.substitutionNote,
          specifiedType: const FullType(Object)),
      'HourFrom',
      serializers.serialize(object.hourFrom,
          specifiedType: const FullType(String)),
      'HourTo',
      serializers.serialize(object.hourTo,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LessonsResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LessonsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Lesson':
          result.lesson.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubjectResponse))
              as SubjectResponse);
          break;
        case 'Classroom':
          result.classroom.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ClassroomResponse))
              as ClassroomResponse);
          break;
        case 'DateFrom':
          result.dateFrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DateTo':
          result.dateTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LessonNo':
          result.lessonNumber = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'TimetableEntry':
          result.timetableEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TimetableEntryResponse))
              as TimetableEntryResponse);
          break;
        case 'DayNo':
          result.dayNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Subject':
          result.subject.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubjectResponse))
              as SubjectResponse);
          break;
        case 'Teacher':
          result.teacher.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TeacherResponse))
              as TeacherResponse);
          break;
        case 'Class':
          result.classres.replace(serializers.deserialize(value,
              specifiedType: const FullType(ClassResponse)) as ClassResponse);
          break;
        case 'IsSubstitutionClass':
          result.isSubstitutionClass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsCanceled':
          result.isCanceled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'SubstitutionNote':
          result.substitutionNote = serializers.deserialize(value,
              specifiedType: const FullType(Object));
          break;
        case 'HourFrom':
          result.hourFrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'HourTo':
          result.hourTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LessonResponseSerializer
    implements StructuredSerializer<LessonResponse> {
  @override
  final Iterable<Type> types = const [LessonResponse, _$LessonResponse];
  @override
  final String wireName = 'LessonResponse';

  @override
  Iterable serialize(Serializers serializers, LessonResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LessonResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LessonResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClassroomResponseSerializer
    implements StructuredSerializer<ClassroomResponse> {
  @override
  final Iterable<Type> types = const [ClassroomResponse, _$ClassroomResponse];
  @override
  final String wireName = 'ClassroomResponse';

  @override
  Iterable serialize(Serializers serializers, ClassroomResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ClassroomResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassroomResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TimetableEntryResponseSerializer
    implements StructuredSerializer<TimetableEntryResponse> {
  @override
  final Iterable<Type> types = const [
    TimetableEntryResponse,
    _$TimetableEntryResponse
  ];
  @override
  final String wireName = 'TimetableEntryResponse';

  @override
  Iterable serialize(Serializers serializers, TimetableEntryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TimetableEntryResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimetableEntryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubjectResponseSerializer
    implements StructuredSerializer<SubjectResponse> {
  @override
  final Iterable<Type> types = const [SubjectResponse, _$SubjectResponse];
  @override
  final String wireName = 'SubjectResponse';

  @override
  Iterable serialize(Serializers serializers, SubjectResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'Short',
      serializers.serialize(object.short,
          specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SubjectResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubjectResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Short':
          result.short = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeacherResponseSerializer
    implements StructuredSerializer<TeacherResponse> {
  @override
  final Iterable<Type> types = const [TeacherResponse, _$TeacherResponse];
  @override
  final String wireName = 'TeacherResponse';

  @override
  Iterable serialize(Serializers serializers, TeacherResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'FirstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'LastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TeacherResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeacherResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'FirstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClassResponseSerializer implements StructuredSerializer<ClassResponse> {
  @override
  final Iterable<Type> types = const [ClassResponse, _$ClassResponse];
  @override
  final String wireName = 'ClassResponse';

  @override
  Iterable serialize(Serializers serializers, ClassResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'Url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ClassResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClassResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LessonsResponse extends LessonsResponse {
  @override
  final SubjectResponse lesson;
  @override
  final ClassroomResponse classroom;
  @override
  final String dateFrom;
  @override
  final String dateTo;
  @override
  final num lessonNumber;
  @override
  final TimetableEntryResponse timetableEntry;
  @override
  final String dayNumber;
  @override
  final SubjectResponse subject;
  @override
  final TeacherResponse teacher;
  @override
  final ClassResponse classres;
  @override
  final bool isSubstitutionClass;
  @override
  final bool isCanceled;
  @override
  final Object substitutionNote;
  @override
  final String hourFrom;
  @override
  final String hourTo;

  factory _$LessonsResponse([void updates(LessonsResponseBuilder b)]) =>
      (new LessonsResponseBuilder()..update(updates)).build();

  _$LessonsResponse._(
      {this.lesson,
      this.classroom,
      this.dateFrom,
      this.dateTo,
      this.lessonNumber,
      this.timetableEntry,
      this.dayNumber,
      this.subject,
      this.teacher,
      this.classres,
      this.isSubstitutionClass,
      this.isCanceled,
      this.substitutionNote,
      this.hourFrom,
      this.hourTo})
      : super._() {
    if (lesson == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'lesson');
    }
    if (classroom == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'classroom');
    }
    if (dateFrom == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'dateFrom');
    }
    if (dateTo == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'dateTo');
    }
    if (lessonNumber == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'lessonNumber');
    }
    if (timetableEntry == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'timetableEntry');
    }
    if (dayNumber == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'dayNumber');
    }
    if (subject == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'subject');
    }
    if (teacher == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'teacher');
    }
    if (classres == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'classres');
    }
    if (isSubstitutionClass == null) {
      throw new BuiltValueNullFieldError(
          'LessonsResponse', 'isSubstitutionClass');
    }
    if (isCanceled == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'isCanceled');
    }
    if (substitutionNote == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'substitutionNote');
    }
    if (hourFrom == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'hourFrom');
    }
    if (hourTo == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'hourTo');
    }
  }

  @override
  LessonsResponse rebuild(void updates(LessonsResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonsResponseBuilder toBuilder() =>
      new LessonsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonsResponse &&
        lesson == other.lesson &&
        classroom == other.classroom &&
        dateFrom == other.dateFrom &&
        dateTo == other.dateTo &&
        lessonNumber == other.lessonNumber &&
        timetableEntry == other.timetableEntry &&
        dayNumber == other.dayNumber &&
        subject == other.subject &&
        teacher == other.teacher &&
        classres == other.classres &&
        isSubstitutionClass == other.isSubstitutionClass &&
        isCanceled == other.isCanceled &&
        substitutionNote == other.substitutionNote &&
        hourFrom == other.hourFrom &&
        hourTo == other.hourTo;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                lesson
                                                                    .hashCode),
                                                            classroom.hashCode),
                                                        dateFrom.hashCode),
                                                    dateTo.hashCode),
                                                lessonNumber.hashCode),
                                            timetableEntry.hashCode),
                                        dayNumber.hashCode),
                                    subject.hashCode),
                                teacher.hashCode),
                            classres.hashCode),
                        isSubstitutionClass.hashCode),
                    isCanceled.hashCode),
                substitutionNote.hashCode),
            hourFrom.hashCode),
        hourTo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LessonsResponse')
          ..add('lesson', lesson)
          ..add('classroom', classroom)
          ..add('dateFrom', dateFrom)
          ..add('dateTo', dateTo)
          ..add('lessonNumber', lessonNumber)
          ..add('timetableEntry', timetableEntry)
          ..add('dayNumber', dayNumber)
          ..add('subject', subject)
          ..add('teacher', teacher)
          ..add('classres', classres)
          ..add('isSubstitutionClass', isSubstitutionClass)
          ..add('isCanceled', isCanceled)
          ..add('substitutionNote', substitutionNote)
          ..add('hourFrom', hourFrom)
          ..add('hourTo', hourTo))
        .toString();
  }
}

class LessonsResponseBuilder
    implements Builder<LessonsResponse, LessonsResponseBuilder> {
  _$LessonsResponse _$v;

  SubjectResponseBuilder _lesson;
  SubjectResponseBuilder get lesson =>
      _$this._lesson ??= new SubjectResponseBuilder();
  set lesson(SubjectResponseBuilder lesson) => _$this._lesson = lesson;

  ClassroomResponseBuilder _classroom;
  ClassroomResponseBuilder get classroom =>
      _$this._classroom ??= new ClassroomResponseBuilder();
  set classroom(ClassroomResponseBuilder classroom) =>
      _$this._classroom = classroom;

  String _dateFrom;
  String get dateFrom => _$this._dateFrom;
  set dateFrom(String dateFrom) => _$this._dateFrom = dateFrom;

  String _dateTo;
  String get dateTo => _$this._dateTo;
  set dateTo(String dateTo) => _$this._dateTo = dateTo;

  num _lessonNumber;
  num get lessonNumber => _$this._lessonNumber;
  set lessonNumber(num lessonNumber) => _$this._lessonNumber = lessonNumber;

  TimetableEntryResponseBuilder _timetableEntry;
  TimetableEntryResponseBuilder get timetableEntry =>
      _$this._timetableEntry ??= new TimetableEntryResponseBuilder();
  set timetableEntry(TimetableEntryResponseBuilder timetableEntry) =>
      _$this._timetableEntry = timetableEntry;

  String _dayNumber;
  String get dayNumber => _$this._dayNumber;
  set dayNumber(String dayNumber) => _$this._dayNumber = dayNumber;

  SubjectResponseBuilder _subject;
  SubjectResponseBuilder get subject =>
      _$this._subject ??= new SubjectResponseBuilder();
  set subject(SubjectResponseBuilder subject) => _$this._subject = subject;

  TeacherResponseBuilder _teacher;
  TeacherResponseBuilder get teacher =>
      _$this._teacher ??= new TeacherResponseBuilder();
  set teacher(TeacherResponseBuilder teacher) => _$this._teacher = teacher;

  ClassResponseBuilder _classres;
  ClassResponseBuilder get classres =>
      _$this._classres ??= new ClassResponseBuilder();
  set classres(ClassResponseBuilder classres) => _$this._classres = classres;

  bool _isSubstitutionClass;
  bool get isSubstitutionClass => _$this._isSubstitutionClass;
  set isSubstitutionClass(bool isSubstitutionClass) =>
      _$this._isSubstitutionClass = isSubstitutionClass;

  bool _isCanceled;
  bool get isCanceled => _$this._isCanceled;
  set isCanceled(bool isCanceled) => _$this._isCanceled = isCanceled;

  Object _substitutionNote;
  Object get substitutionNote => _$this._substitutionNote;
  set substitutionNote(Object substitutionNote) =>
      _$this._substitutionNote = substitutionNote;

  String _hourFrom;
  String get hourFrom => _$this._hourFrom;
  set hourFrom(String hourFrom) => _$this._hourFrom = hourFrom;

  String _hourTo;
  String get hourTo => _$this._hourTo;
  set hourTo(String hourTo) => _$this._hourTo = hourTo;

  LessonsResponseBuilder();

  LessonsResponseBuilder get _$this {
    if (_$v != null) {
      _lesson = _$v.lesson?.toBuilder();
      _classroom = _$v.classroom?.toBuilder();
      _dateFrom = _$v.dateFrom;
      _dateTo = _$v.dateTo;
      _lessonNumber = _$v.lessonNumber;
      _timetableEntry = _$v.timetableEntry?.toBuilder();
      _dayNumber = _$v.dayNumber;
      _subject = _$v.subject?.toBuilder();
      _teacher = _$v.teacher?.toBuilder();
      _classres = _$v.classres?.toBuilder();
      _isSubstitutionClass = _$v.isSubstitutionClass;
      _isCanceled = _$v.isCanceled;
      _substitutionNote = _$v.substitutionNote;
      _hourFrom = _$v.hourFrom;
      _hourTo = _$v.hourTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LessonsResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LessonsResponse;
  }

  @override
  void update(void updates(LessonsResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LessonsResponse build() {
    _$LessonsResponse _$result;
    try {
      _$result = _$v ??
          new _$LessonsResponse._(
              lesson: lesson.build(),
              classroom: classroom.build(),
              dateFrom: dateFrom,
              dateTo: dateTo,
              lessonNumber: lessonNumber,
              timetableEntry: timetableEntry.build(),
              dayNumber: dayNumber,
              subject: subject.build(),
              teacher: teacher.build(),
              classres: classres.build(),
              isSubstitutionClass: isSubstitutionClass,
              isCanceled: isCanceled,
              substitutionNote: substitutionNote,
              hourFrom: hourFrom,
              hourTo: hourTo);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lesson';
        lesson.build();
        _$failedField = 'classroom';
        classroom.build();

        _$failedField = 'timetableEntry';
        timetableEntry.build();

        _$failedField = 'subject';
        subject.build();
        _$failedField = 'teacher';
        teacher.build();
        _$failedField = 'classres';
        classres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LessonsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LessonResponse extends LessonResponse {
  @override
  final String id;
  @override
  final String url;

  factory _$LessonResponse([void updates(LessonResponseBuilder b)]) =>
      (new LessonResponseBuilder()..update(updates)).build();

  _$LessonResponse._({this.id, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LessonResponse', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('LessonResponse', 'url');
    }
  }

  @override
  LessonResponse rebuild(void updates(LessonResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonResponseBuilder toBuilder() =>
      new LessonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonResponse && id == other.id && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LessonResponse')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class LessonResponseBuilder
    implements Builder<LessonResponse, LessonResponseBuilder> {
  _$LessonResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  LessonResponseBuilder();

  LessonResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LessonResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LessonResponse;
  }

  @override
  void update(void updates(LessonResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LessonResponse build() {
    final _$result = _$v ?? new _$LessonResponse._(id: id, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$ClassroomResponse extends ClassroomResponse {
  @override
  final String id;
  @override
  final String url;

  factory _$ClassroomResponse([void updates(ClassroomResponseBuilder b)]) =>
      (new ClassroomResponseBuilder()..update(updates)).build();

  _$ClassroomResponse._({this.id, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ClassroomResponse', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ClassroomResponse', 'url');
    }
  }

  @override
  ClassroomResponse rebuild(void updates(ClassroomResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassroomResponseBuilder toBuilder() =>
      new ClassroomResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassroomResponse && id == other.id && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassroomResponse')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class ClassroomResponseBuilder
    implements Builder<ClassroomResponse, ClassroomResponseBuilder> {
  _$ClassroomResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ClassroomResponseBuilder();

  ClassroomResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassroomResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClassroomResponse;
  }

  @override
  void update(void updates(ClassroomResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassroomResponse build() {
    final _$result = _$v ?? new _$ClassroomResponse._(id: id, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$TimetableEntryResponse extends TimetableEntryResponse {
  @override
  final String id;
  @override
  final String url;

  factory _$TimetableEntryResponse(
          [void updates(TimetableEntryResponseBuilder b)]) =>
      (new TimetableEntryResponseBuilder()..update(updates)).build();

  _$TimetableEntryResponse._({this.id, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TimetableEntryResponse', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('TimetableEntryResponse', 'url');
    }
  }

  @override
  TimetableEntryResponse rebuild(
          void updates(TimetableEntryResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TimetableEntryResponseBuilder toBuilder() =>
      new TimetableEntryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimetableEntryResponse &&
        id == other.id &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimetableEntryResponse')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class TimetableEntryResponseBuilder
    implements Builder<TimetableEntryResponse, TimetableEntryResponseBuilder> {
  _$TimetableEntryResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  TimetableEntryResponseBuilder();

  TimetableEntryResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimetableEntryResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimetableEntryResponse;
  }

  @override
  void update(void updates(TimetableEntryResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TimetableEntryResponse build() {
    final _$result = _$v ?? new _$TimetableEntryResponse._(id: id, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$SubjectResponse extends SubjectResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String short;
  @override
  final String url;

  factory _$SubjectResponse([void updates(SubjectResponseBuilder b)]) =>
      (new SubjectResponseBuilder()..update(updates)).build();

  _$SubjectResponse._({this.id, this.name, this.short, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'name');
    }
    if (short == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'short');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'url');
    }
  }

  @override
  SubjectResponse rebuild(void updates(SubjectResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SubjectResponseBuilder toBuilder() =>
      new SubjectResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubjectResponse &&
        id == other.id &&
        name == other.name &&
        short == other.short &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), name.hashCode), short.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubjectResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('short', short)
          ..add('url', url))
        .toString();
  }
}

class SubjectResponseBuilder
    implements Builder<SubjectResponse, SubjectResponseBuilder> {
  _$SubjectResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _short;
  String get short => _$this._short;
  set short(String short) => _$this._short = short;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  SubjectResponseBuilder();

  SubjectResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _short = _$v.short;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubjectResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubjectResponse;
  }

  @override
  void update(void updates(SubjectResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SubjectResponse build() {
    final _$result = _$v ??
        new _$SubjectResponse._(id: id, name: name, short: short, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$TeacherResponse extends TeacherResponse {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String url;

  factory _$TeacherResponse([void updates(TeacherResponseBuilder b)]) =>
      (new TeacherResponseBuilder()..update(updates)).build();

  _$TeacherResponse._({this.id, this.firstName, this.lastName, this.url})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'id');
    }
    if (firstName == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'firstName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'lastName');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'url');
    }
  }

  @override
  TeacherResponse rebuild(void updates(TeacherResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TeacherResponseBuilder toBuilder() =>
      new TeacherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeacherResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), firstName.hashCode), lastName.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeacherResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('url', url))
        .toString();
  }
}

class TeacherResponseBuilder
    implements Builder<TeacherResponse, TeacherResponseBuilder> {
  _$TeacherResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  TeacherResponseBuilder();

  TeacherResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeacherResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeacherResponse;
  }

  @override
  void update(void updates(TeacherResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TeacherResponse build() {
    final _$result = _$v ??
        new _$TeacherResponse._(
            id: id, firstName: firstName, lastName: lastName, url: url);
    replace(_$result);
    return _$result;
  }
}

class _$ClassResponse extends ClassResponse {
  @override
  final String id;
  @override
  final String url;

  factory _$ClassResponse([void updates(ClassResponseBuilder b)]) =>
      (new ClassResponseBuilder()..update(updates)).build();

  _$ClassResponse._({this.id, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ClassResponse', 'id');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ClassResponse', 'url');
    }
  }

  @override
  ClassResponse rebuild(void updates(ClassResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ClassResponseBuilder toBuilder() => new ClassResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClassResponse && id == other.id && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassResponse')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class ClassResponseBuilder
    implements Builder<ClassResponse, ClassResponseBuilder> {
  _$ClassResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ClassResponseBuilder();

  ClassResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClassResponse;
  }

  @override
  void update(void updates(ClassResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassResponse build() {
    final _$result = _$v ?? new _$ClassResponse._(id: id, url: url);
    replace(_$result);
    return _$result;
  }
}

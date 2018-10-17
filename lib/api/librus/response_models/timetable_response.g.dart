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

Serializer<TimetableResponse> _$timetableResponseSerializer =
    new _$TimetableResponseSerializer();
Serializer<LessonsResponse> _$lessonsResponseSerializer =
    new _$LessonsResponseSerializer();
Serializer<SubjectResponse> _$subjectResponseSerializer =
    new _$SubjectResponseSerializer();
Serializer<TeacherResponse> _$teacherResponseSerializer =
    new _$TeacherResponseSerializer();

class _$TimetableResponseSerializer
    implements StructuredSerializer<TimetableResponse> {
  @override
  final Iterable<Type> types = const [TimetableResponse, _$TimetableResponse];
  @override
  final String wireName = 'TimetableResponse';

  @override
  Iterable serialize(Serializers serializers, TimetableResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Lessons',
      serializers.serialize(object.lessons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(LessonsResponse)])),
    ];

    return result;
  }

  @override
  TimetableResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimetableResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Lessons':
          result.lessons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LessonsResponse)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

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
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(num)),
      'LessonNo',
      serializers.serialize(object.lessonNumber,
          specifiedType: const FullType(num)),
      'Subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(SubjectResponse)),
      'Teacher',
      serializers.serialize(object.teacher,
          specifiedType: const FullType(TeacherResponse)),
      'IsSubstitutionClass',
      serializers.serialize(object.isSubstitutionClass,
          specifiedType: const FullType(bool)),
      'IsCanceled',
      serializers.serialize(object.isCanceled,
          specifiedType: const FullType(bool)),
      'OrgTeacher',
      serializers.serialize(object.orgTeacher,
          specifiedType: const FullType(TeacherResponse)),
      'OrgSubject',
      serializers.serialize(object.orgSubject,
          specifiedType: const FullType(SubjectResponse)),
      'Date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
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
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'LessonNo':
          result.lessonNumber = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
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
        case 'IsSubstitutionClass':
          result.isSubstitutionClass = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsCanceled':
          result.isCanceled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'OrgTeacher':
          result.orgTeacher.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TeacherResponse))
              as TeacherResponse);
          break;
        case 'OrgSubject':
          result.orgSubject.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubjectResponse))
              as SubjectResponse);
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
      'Average',
      serializers.serialize(object.average,
          specifiedType: const FullType(String)),
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
        case 'Average':
          result.average = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$TimetableResponse extends TimetableResponse {
  @override
  final BuiltList<LessonsResponse> lessons;

  factory _$TimetableResponse([void updates(TimetableResponseBuilder b)]) =>
      (new TimetableResponseBuilder()..update(updates)).build();

  _$TimetableResponse._({this.lessons}) : super._() {
    if (lessons == null) {
      throw new BuiltValueNullFieldError('TimetableResponse', 'lessons');
    }
  }

  @override
  TimetableResponse rebuild(void updates(TimetableResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TimetableResponseBuilder toBuilder() =>
      new TimetableResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimetableResponse && lessons == other.lessons;
  }

  @override
  int get hashCode {
    return $jf($jc(0, lessons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimetableResponse')
          ..add('lessons', lessons))
        .toString();
  }
}

class TimetableResponseBuilder
    implements Builder<TimetableResponse, TimetableResponseBuilder> {
  _$TimetableResponse _$v;

  ListBuilder<LessonsResponse> _lessons;
  ListBuilder<LessonsResponse> get lessons =>
      _$this._lessons ??= new ListBuilder<LessonsResponse>();
  set lessons(ListBuilder<LessonsResponse> lessons) =>
      _$this._lessons = lessons;

  TimetableResponseBuilder();

  TimetableResponseBuilder get _$this {
    if (_$v != null) {
      _lessons = _$v.lessons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimetableResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimetableResponse;
  }

  @override
  void update(void updates(TimetableResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TimetableResponse build() {
    _$TimetableResponse _$result;
    try {
      _$result = _$v ?? new _$TimetableResponse._(lessons: lessons.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lessons';
        lessons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TimetableResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LessonsResponse extends LessonsResponse {
  @override
  final num id;
  @override
  final num lessonNumber;
  @override
  final SubjectResponse subject;
  @override
  final TeacherResponse teacher;
  @override
  final bool isSubstitutionClass;
  @override
  final bool isCanceled;
  @override
  final TeacherResponse orgTeacher;
  @override
  final SubjectResponse orgSubject;
  @override
  final String date;
  @override
  final String hourFrom;
  @override
  final String hourTo;

  factory _$LessonsResponse([void updates(LessonsResponseBuilder b)]) =>
      (new LessonsResponseBuilder()..update(updates)).build();

  _$LessonsResponse._(
      {this.id,
      this.lessonNumber,
      this.subject,
      this.teacher,
      this.isSubstitutionClass,
      this.isCanceled,
      this.orgTeacher,
      this.orgSubject,
      this.date,
      this.hourFrom,
      this.hourTo})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'id');
    }
    if (lessonNumber == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'lessonNumber');
    }
    if (subject == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'subject');
    }
    if (teacher == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'teacher');
    }
    if (isSubstitutionClass == null) {
      throw new BuiltValueNullFieldError(
          'LessonsResponse', 'isSubstitutionClass');
    }
    if (isCanceled == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'isCanceled');
    }
    if (orgTeacher == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'orgTeacher');
    }
    if (orgSubject == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'orgSubject');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('LessonsResponse', 'date');
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
        id == other.id &&
        lessonNumber == other.lessonNumber &&
        subject == other.subject &&
        teacher == other.teacher &&
        isSubstitutionClass == other.isSubstitutionClass &&
        isCanceled == other.isCanceled &&
        orgTeacher == other.orgTeacher &&
        orgSubject == other.orgSubject &&
        date == other.date &&
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
                                        $jc($jc(0, id.hashCode),
                                            lessonNumber.hashCode),
                                        subject.hashCode),
                                    teacher.hashCode),
                                isSubstitutionClass.hashCode),
                            isCanceled.hashCode),
                        orgTeacher.hashCode),
                    orgSubject.hashCode),
                date.hashCode),
            hourFrom.hashCode),
        hourTo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LessonsResponse')
          ..add('id', id)
          ..add('lessonNumber', lessonNumber)
          ..add('subject', subject)
          ..add('teacher', teacher)
          ..add('isSubstitutionClass', isSubstitutionClass)
          ..add('isCanceled', isCanceled)
          ..add('orgTeacher', orgTeacher)
          ..add('orgSubject', orgSubject)
          ..add('date', date)
          ..add('hourFrom', hourFrom)
          ..add('hourTo', hourTo))
        .toString();
  }
}

class LessonsResponseBuilder
    implements Builder<LessonsResponse, LessonsResponseBuilder> {
  _$LessonsResponse _$v;

  num _id;
  num get id => _$this._id;
  set id(num id) => _$this._id = id;

  num _lessonNumber;
  num get lessonNumber => _$this._lessonNumber;
  set lessonNumber(num lessonNumber) => _$this._lessonNumber = lessonNumber;

  SubjectResponseBuilder _subject;
  SubjectResponseBuilder get subject =>
      _$this._subject ??= new SubjectResponseBuilder();
  set subject(SubjectResponseBuilder subject) => _$this._subject = subject;

  TeacherResponseBuilder _teacher;
  TeacherResponseBuilder get teacher =>
      _$this._teacher ??= new TeacherResponseBuilder();
  set teacher(TeacherResponseBuilder teacher) => _$this._teacher = teacher;

  bool _isSubstitutionClass;
  bool get isSubstitutionClass => _$this._isSubstitutionClass;
  set isSubstitutionClass(bool isSubstitutionClass) =>
      _$this._isSubstitutionClass = isSubstitutionClass;

  bool _isCanceled;
  bool get isCanceled => _$this._isCanceled;
  set isCanceled(bool isCanceled) => _$this._isCanceled = isCanceled;

  TeacherResponseBuilder _orgTeacher;
  TeacherResponseBuilder get orgTeacher =>
      _$this._orgTeacher ??= new TeacherResponseBuilder();
  set orgTeacher(TeacherResponseBuilder orgTeacher) =>
      _$this._orgTeacher = orgTeacher;

  SubjectResponseBuilder _orgSubject;
  SubjectResponseBuilder get orgSubject =>
      _$this._orgSubject ??= new SubjectResponseBuilder();
  set orgSubject(SubjectResponseBuilder orgSubject) =>
      _$this._orgSubject = orgSubject;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _hourFrom;
  String get hourFrom => _$this._hourFrom;
  set hourFrom(String hourFrom) => _$this._hourFrom = hourFrom;

  String _hourTo;
  String get hourTo => _$this._hourTo;
  set hourTo(String hourTo) => _$this._hourTo = hourTo;

  LessonsResponseBuilder();

  LessonsResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _lessonNumber = _$v.lessonNumber;
      _subject = _$v.subject?.toBuilder();
      _teacher = _$v.teacher?.toBuilder();
      _isSubstitutionClass = _$v.isSubstitutionClass;
      _isCanceled = _$v.isCanceled;
      _orgTeacher = _$v.orgTeacher?.toBuilder();
      _orgSubject = _$v.orgSubject?.toBuilder();
      _date = _$v.date;
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
              id: id,
              lessonNumber: lessonNumber,
              subject: subject.build(),
              teacher: teacher.build(),
              isSubstitutionClass: isSubstitutionClass,
              isCanceled: isCanceled,
              orgTeacher: orgTeacher.build(),
              orgSubject: orgSubject.build(),
              date: date,
              hourFrom: hourFrom,
              hourTo: hourTo);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subject';
        subject.build();
        _$failedField = 'teacher';
        teacher.build();

        _$failedField = 'orgTeacher';
        orgTeacher.build();
        _$failedField = 'orgSubject';
        orgSubject.build();
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

class _$SubjectResponse extends SubjectResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String average;

  factory _$SubjectResponse([void updates(SubjectResponseBuilder b)]) =>
      (new SubjectResponseBuilder()..update(updates)).build();

  _$SubjectResponse._({this.id, this.name, this.average}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'name');
    }
    if (average == null) {
      throw new BuiltValueNullFieldError('SubjectResponse', 'average');
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
        average == other.average;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), average.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubjectResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('average', average))
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

  String _average;
  String get average => _$this._average;
  set average(String average) => _$this._average = average;

  SubjectResponseBuilder();

  SubjectResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _average = _$v.average;
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
    final _$result =
        _$v ?? new _$SubjectResponse._(id: id, name: name, average: average);
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

  factory _$TeacherResponse([void updates(TeacherResponseBuilder b)]) =>
      (new TeacherResponseBuilder()..update(updates)).build();

  _$TeacherResponse._({this.id, this.firstName, this.lastName}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'id');
    }
    if (firstName == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'firstName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('TeacherResponse', 'lastName');
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
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), firstName.hashCode), lastName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeacherResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
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

  TeacherResponseBuilder();

  TeacherResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
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
            id: id, firstName: firstName, lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

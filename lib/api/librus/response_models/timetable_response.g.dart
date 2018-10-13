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

Serializer<LibrusTimetableResponse> _$librusTimetableResponseSerializer =
    new _$LibrusTimetableResponseSerializer();
Serializer<LibrusSubjectResponse> _$librusSubjectResponseSerializer =
    new _$LibrusSubjectResponseSerializer();
Serializer<LibrusTeacherResponse> _$librusTeacherResponseSerializer =
    new _$LibrusTeacherResponseSerializer();

class _$LibrusTimetableResponseSerializer
    implements StructuredSerializer<LibrusTimetableResponse> {
  @override
  final Iterable<Type> types = const [
    LibrusTimetableResponse,
    _$LibrusTimetableResponse
  ];
  @override
  final String wireName = 'LibrusTimetableResponse';

  @override
  Iterable serialize(Serializers serializers, LibrusTimetableResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'LessonNo',
      serializers.serialize(object.lessonNumber,
          specifiedType: const FullType(num)),
      'IsSubstitutionClass',
      serializers.serialize(object.substitution,
          specifiedType: const FullType(bool)),
      'IsCanceled',
      serializers.serialize(object.canceled,
          specifiedType: const FullType(bool)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
      'hourFrom',
      serializers.serialize(object.hourFrom,
          specifiedType: const FullType(DateTime)),
      'hourTo',
      serializers.serialize(object.hourTo,
          specifiedType: const FullType(DateTime)),
    ];
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(LibrusSubjectResponse)
            ])));
    }
    if (object.teacher != null) {
      result
        ..add('teacher')
        ..add(serializers.serialize(object.teacher,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(LibrusTeacherResponse)
            ])));
    }
    if (object.orgTeacher != null) {
      result
        ..add('orgTeacher')
        ..add(serializers.serialize(object.orgTeacher,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(LibrusTeacherResponse)
            ])));
    }
    if (object.orgSubject != null) {
      result
        ..add('orgSubject')
        ..add(serializers.serialize(object.orgSubject,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(LibrusSubjectResponse)
            ])));
    }

    return result;
  }

  @override
  LibrusTimetableResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusTimetableResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LessonNo':
          result.lessonNumber = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'subject':
          result.subject.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(LibrusSubjectResponse)
              ])) as BuiltMap);
          break;
        case 'teacher':
          result.teacher.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(LibrusTeacherResponse)
              ])) as BuiltMap);
          break;
        case 'IsSubstitutionClass':
          result.substitution = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'IsCanceled':
          result.canceled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'orgTeacher':
          result.orgTeacher.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(LibrusTeacherResponse)
              ])) as BuiltMap);
          break;
        case 'orgSubject':
          result.orgSubject.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(LibrusSubjectResponse)
              ])) as BuiltMap);
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'hourFrom':
          result.hourFrom = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'hourTo':
          result.hourTo = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$LibrusSubjectResponseSerializer
    implements StructuredSerializer<LibrusSubjectResponse> {
  @override
  final Iterable<Type> types = const [
    LibrusSubjectResponse,
    _$LibrusSubjectResponse
  ];
  @override
  final String wireName = 'LibrusSubjectResponse';

  @override
  Iterable serialize(Serializers serializers, LibrusSubjectResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'average',
      serializers.serialize(object.average,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LibrusSubjectResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusSubjectResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'average':
          result.average = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LibrusTeacherResponseSerializer
    implements StructuredSerializer<LibrusTeacherResponse> {
  @override
  final Iterable<Type> types = const [
    LibrusTeacherResponse,
    _$LibrusTeacherResponse
  ];
  @override
  final String wireName = 'LibrusTeacherResponse';

  @override
  Iterable serialize(Serializers serializers, LibrusTeacherResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LibrusTeacherResponse deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LibrusTeacherResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LibrusTimetableResponse extends LibrusTimetableResponse {
  @override
  final String id;
  @override
  final num lessonNumber;
  @override
  final BuiltMap<String, LibrusSubjectResponse> subject;
  @override
  final BuiltMap<String, LibrusTeacherResponse> teacher;
  @override
  final bool substitution;
  @override
  final bool canceled;
  @override
  final BuiltMap<String, LibrusTeacherResponse> orgTeacher;
  @override
  final BuiltMap<String, LibrusSubjectResponse> orgSubject;
  @override
  final DateTime date;
  @override
  final DateTime hourFrom;
  @override
  final DateTime hourTo;

  factory _$LibrusTimetableResponse(
          [void updates(LibrusTimetableResponseBuilder b)]) =>
      (new LibrusTimetableResponseBuilder()..update(updates)).build();

  _$LibrusTimetableResponse._(
      {this.id,
      this.lessonNumber,
      this.subject,
      this.teacher,
      this.substitution,
      this.canceled,
      this.orgTeacher,
      this.orgSubject,
      this.date,
      this.hourFrom,
      this.hourTo})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LibrusTimetableResponse', 'id');
    }
    if (lessonNumber == null) {
      throw new BuiltValueNullFieldError(
          'LibrusTimetableResponse', 'lessonNumber');
    }
    if (substitution == null) {
      throw new BuiltValueNullFieldError(
          'LibrusTimetableResponse', 'substitution');
    }
    if (canceled == null) {
      throw new BuiltValueNullFieldError('LibrusTimetableResponse', 'canceled');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('LibrusTimetableResponse', 'date');
    }
    if (hourFrom == null) {
      throw new BuiltValueNullFieldError('LibrusTimetableResponse', 'hourFrom');
    }
    if (hourTo == null) {
      throw new BuiltValueNullFieldError('LibrusTimetableResponse', 'hourTo');
    }
  }

  @override
  LibrusTimetableResponse rebuild(
          void updates(LibrusTimetableResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusTimetableResponseBuilder toBuilder() =>
      new LibrusTimetableResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusTimetableResponse &&
        id == other.id &&
        lessonNumber == other.lessonNumber &&
        subject == other.subject &&
        teacher == other.teacher &&
        substitution == other.substitution &&
        canceled == other.canceled &&
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
                                substitution.hashCode),
                            canceled.hashCode),
                        orgTeacher.hashCode),
                    orgSubject.hashCode),
                date.hashCode),
            hourFrom.hashCode),
        hourTo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LibrusTimetableResponse')
          ..add('id', id)
          ..add('lessonNumber', lessonNumber)
          ..add('subject', subject)
          ..add('teacher', teacher)
          ..add('substitution', substitution)
          ..add('canceled', canceled)
          ..add('orgTeacher', orgTeacher)
          ..add('orgSubject', orgSubject)
          ..add('date', date)
          ..add('hourFrom', hourFrom)
          ..add('hourTo', hourTo))
        .toString();
  }
}

class LibrusTimetableResponseBuilder
    implements
        Builder<LibrusTimetableResponse, LibrusTimetableResponseBuilder> {
  _$LibrusTimetableResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  num _lessonNumber;
  num get lessonNumber => _$this._lessonNumber;
  set lessonNumber(num lessonNumber) => _$this._lessonNumber = lessonNumber;

  MapBuilder<String, LibrusSubjectResponse> _subject;
  MapBuilder<String, LibrusSubjectResponse> get subject =>
      _$this._subject ??= new MapBuilder<String, LibrusSubjectResponse>();
  set subject(MapBuilder<String, LibrusSubjectResponse> subject) =>
      _$this._subject = subject;

  MapBuilder<String, LibrusTeacherResponse> _teacher;
  MapBuilder<String, LibrusTeacherResponse> get teacher =>
      _$this._teacher ??= new MapBuilder<String, LibrusTeacherResponse>();
  set teacher(MapBuilder<String, LibrusTeacherResponse> teacher) =>
      _$this._teacher = teacher;

  bool _substitution;
  bool get substitution => _$this._substitution;
  set substitution(bool substitution) => _$this._substitution = substitution;

  bool _canceled;
  bool get canceled => _$this._canceled;
  set canceled(bool canceled) => _$this._canceled = canceled;

  MapBuilder<String, LibrusTeacherResponse> _orgTeacher;
  MapBuilder<String, LibrusTeacherResponse> get orgTeacher =>
      _$this._orgTeacher ??= new MapBuilder<String, LibrusTeacherResponse>();
  set orgTeacher(MapBuilder<String, LibrusTeacherResponse> orgTeacher) =>
      _$this._orgTeacher = orgTeacher;

  MapBuilder<String, LibrusSubjectResponse> _orgSubject;
  MapBuilder<String, LibrusSubjectResponse> get orgSubject =>
      _$this._orgSubject ??= new MapBuilder<String, LibrusSubjectResponse>();
  set orgSubject(MapBuilder<String, LibrusSubjectResponse> orgSubject) =>
      _$this._orgSubject = orgSubject;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DateTime _hourFrom;
  DateTime get hourFrom => _$this._hourFrom;
  set hourFrom(DateTime hourFrom) => _$this._hourFrom = hourFrom;

  DateTime _hourTo;
  DateTime get hourTo => _$this._hourTo;
  set hourTo(DateTime hourTo) => _$this._hourTo = hourTo;

  LibrusTimetableResponseBuilder();

  LibrusTimetableResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _lessonNumber = _$v.lessonNumber;
      _subject = _$v.subject?.toBuilder();
      _teacher = _$v.teacher?.toBuilder();
      _substitution = _$v.substitution;
      _canceled = _$v.canceled;
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
  void replace(LibrusTimetableResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusTimetableResponse;
  }

  @override
  void update(void updates(LibrusTimetableResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusTimetableResponse build() {
    _$LibrusTimetableResponse _$result;
    try {
      _$result = _$v ??
          new _$LibrusTimetableResponse._(
              id: id,
              lessonNumber: lessonNumber,
              subject: _subject?.build(),
              teacher: _teacher?.build(),
              substitution: substitution,
              canceled: canceled,
              orgTeacher: _orgTeacher?.build(),
              orgSubject: _orgSubject?.build(),
              date: date,
              hourFrom: hourFrom,
              hourTo: hourTo);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subject';
        _subject?.build();
        _$failedField = 'teacher';
        _teacher?.build();

        _$failedField = 'orgTeacher';
        _orgTeacher?.build();
        _$failedField = 'orgSubject';
        _orgSubject?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LibrusTimetableResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LibrusSubjectResponse extends LibrusSubjectResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String average;

  factory _$LibrusSubjectResponse(
          [void updates(LibrusSubjectResponseBuilder b)]) =>
      (new LibrusSubjectResponseBuilder()..update(updates)).build();

  _$LibrusSubjectResponse._({this.id, this.name, this.average}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LibrusSubjectResponse', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('LibrusSubjectResponse', 'name');
    }
    if (average == null) {
      throw new BuiltValueNullFieldError('LibrusSubjectResponse', 'average');
    }
  }

  @override
  LibrusSubjectResponse rebuild(void updates(LibrusSubjectResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusSubjectResponseBuilder toBuilder() =>
      new LibrusSubjectResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusSubjectResponse &&
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
    return (newBuiltValueToStringHelper('LibrusSubjectResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('average', average))
        .toString();
  }
}

class LibrusSubjectResponseBuilder
    implements Builder<LibrusSubjectResponse, LibrusSubjectResponseBuilder> {
  _$LibrusSubjectResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _average;
  String get average => _$this._average;
  set average(String average) => _$this._average = average;

  LibrusSubjectResponseBuilder();

  LibrusSubjectResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _average = _$v.average;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibrusSubjectResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusSubjectResponse;
  }

  @override
  void update(void updates(LibrusSubjectResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusSubjectResponse build() {
    final _$result = _$v ??
        new _$LibrusSubjectResponse._(id: id, name: name, average: average);
    replace(_$result);
    return _$result;
  }
}

class _$LibrusTeacherResponse extends LibrusTeacherResponse {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;

  factory _$LibrusTeacherResponse(
          [void updates(LibrusTeacherResponseBuilder b)]) =>
      (new LibrusTeacherResponseBuilder()..update(updates)).build();

  _$LibrusTeacherResponse._({this.id, this.firstName, this.lastName})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LibrusTeacherResponse', 'id');
    }
    if (firstName == null) {
      throw new BuiltValueNullFieldError('LibrusTeacherResponse', 'firstName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('LibrusTeacherResponse', 'lastName');
    }
  }

  @override
  LibrusTeacherResponse rebuild(void updates(LibrusTeacherResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrusTeacherResponseBuilder toBuilder() =>
      new LibrusTeacherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrusTeacherResponse &&
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
    return (newBuiltValueToStringHelper('LibrusTeacherResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class LibrusTeacherResponseBuilder
    implements Builder<LibrusTeacherResponse, LibrusTeacherResponseBuilder> {
  _$LibrusTeacherResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  LibrusTeacherResponseBuilder();

  LibrusTeacherResponseBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibrusTeacherResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LibrusTeacherResponse;
  }

  @override
  void update(void updates(LibrusTeacherResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LibrusTeacherResponse build() {
    final _$result = _$v ??
        new _$LibrusTeacherResponse._(
            id: id, firstName: firstName, lastName: lastName);
    replace(_$result);
    return _$result;
  }
}

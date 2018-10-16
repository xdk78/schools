// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable.dart';

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

Serializer<Timetable> _$timetableSerializer = new _$TimetableSerializer();
Serializer<Lesson> _$lessonSerializer = new _$LessonSerializer();

class _$TimetableSerializer implements StructuredSerializer<Timetable> {
  @override
  final Iterable<Type> types = const [Timetable, _$Timetable];
  @override
  final String wireName = 'Timetable';

  @override
  Iterable serialize(Serializers serializers, Timetable object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'monday',
      serializers.serialize(object.monday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Lesson)])),
      'thuesday',
      serializers.serialize(object.thuesday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Lesson)])),
      'wednesday',
      serializers.serialize(object.wednesday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Lesson)])),
      'thursday',
      serializers.serialize(object.thursday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Lesson)])),
      'friday',
      serializers.serialize(object.friday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Lesson)])),
    ];

    return result;
  }

  @override
  Timetable deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimetableBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'monday':
          result.monday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'thuesday':
          result.thuesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'wednesday':
          result.wednesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'thursday':
          result.thursday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
        case 'friday':
          result.friday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Lesson)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$LessonSerializer implements StructuredSerializer<Lesson> {
  @override
  final Iterable<Type> types = const [Lesson, _$Lesson];
  @override
  final String wireName = 'Lesson';

  @override
  Iterable serialize(Serializers serializers, Lesson object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lessonNumber',
      serializers.serialize(object.lessonNumber,
          specifiedType: const FullType(int)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'classroom',
      serializers.serialize(object.classroom,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Lesson deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LessonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lessonNumber':
          result.lessonNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'classroom':
          result.classroom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Timetable extends Timetable {
  @override
  final BuiltList<Lesson> monday;
  @override
  final BuiltList<Lesson> thuesday;
  @override
  final BuiltList<Lesson> wednesday;
  @override
  final BuiltList<Lesson> thursday;
  @override
  final BuiltList<Lesson> friday;

  factory _$Timetable([void updates(TimetableBuilder b)]) =>
      (new TimetableBuilder()..update(updates)).build();

  _$Timetable._(
      {this.monday, this.thuesday, this.wednesday, this.thursday, this.friday})
      : super._() {
    if (monday == null) {
      throw new BuiltValueNullFieldError('Timetable', 'monday');
    }
    if (thuesday == null) {
      throw new BuiltValueNullFieldError('Timetable', 'thuesday');
    }
    if (wednesday == null) {
      throw new BuiltValueNullFieldError('Timetable', 'wednesday');
    }
    if (thursday == null) {
      throw new BuiltValueNullFieldError('Timetable', 'thursday');
    }
    if (friday == null) {
      throw new BuiltValueNullFieldError('Timetable', 'friday');
    }
  }

  @override
  Timetable rebuild(void updates(TimetableBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TimetableBuilder toBuilder() => new TimetableBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Timetable &&
        monday == other.monday &&
        thuesday == other.thuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, monday.hashCode), thuesday.hashCode),
                wednesday.hashCode),
            thursday.hashCode),
        friday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Timetable')
          ..add('monday', monday)
          ..add('thuesday', thuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday))
        .toString();
  }
}

class TimetableBuilder implements Builder<Timetable, TimetableBuilder> {
  _$Timetable _$v;

  ListBuilder<Lesson> _monday;
  ListBuilder<Lesson> get monday =>
      _$this._monday ??= new ListBuilder<Lesson>();
  set monday(ListBuilder<Lesson> monday) => _$this._monday = monday;

  ListBuilder<Lesson> _thuesday;
  ListBuilder<Lesson> get thuesday =>
      _$this._thuesday ??= new ListBuilder<Lesson>();
  set thuesday(ListBuilder<Lesson> thuesday) => _$this._thuesday = thuesday;

  ListBuilder<Lesson> _wednesday;
  ListBuilder<Lesson> get wednesday =>
      _$this._wednesday ??= new ListBuilder<Lesson>();
  set wednesday(ListBuilder<Lesson> wednesday) => _$this._wednesday = wednesday;

  ListBuilder<Lesson> _thursday;
  ListBuilder<Lesson> get thursday =>
      _$this._thursday ??= new ListBuilder<Lesson>();
  set thursday(ListBuilder<Lesson> thursday) => _$this._thursday = thursday;

  ListBuilder<Lesson> _friday;
  ListBuilder<Lesson> get friday =>
      _$this._friday ??= new ListBuilder<Lesson>();
  set friday(ListBuilder<Lesson> friday) => _$this._friday = friday;

  TimetableBuilder();

  TimetableBuilder get _$this {
    if (_$v != null) {
      _monday = _$v.monday?.toBuilder();
      _thuesday = _$v.thuesday?.toBuilder();
      _wednesday = _$v.wednesday?.toBuilder();
      _thursday = _$v.thursday?.toBuilder();
      _friday = _$v.friday?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Timetable other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Timetable;
  }

  @override
  void update(void updates(TimetableBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Timetable build() {
    _$Timetable _$result;
    try {
      _$result = _$v ??
          new _$Timetable._(
              monday: monday.build(),
              thuesday: thuesday.build(),
              wednesday: wednesday.build(),
              thursday: thursday.build(),
              friday: friday.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'monday';
        monday.build();
        _$failedField = 'thuesday';
        thuesday.build();
        _$failedField = 'wednesday';
        wednesday.build();
        _$failedField = 'thursday';
        thursday.build();
        _$failedField = 'friday';
        friday.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Timetable', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Lesson extends Lesson {
  @override
  final int lessonNumber;
  @override
  final String subject;
  @override
  final String classroom;

  factory _$Lesson([void updates(LessonBuilder b)]) =>
      (new LessonBuilder()..update(updates)).build();

  _$Lesson._({this.lessonNumber, this.subject, this.classroom}) : super._() {
    if (lessonNumber == null) {
      throw new BuiltValueNullFieldError('Lesson', 'lessonNumber');
    }
    if (subject == null) {
      throw new BuiltValueNullFieldError('Lesson', 'subject');
    }
    if (classroom == null) {
      throw new BuiltValueNullFieldError('Lesson', 'classroom');
    }
  }

  @override
  Lesson rebuild(void updates(LessonBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonBuilder toBuilder() => new LessonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Lesson &&
        lessonNumber == other.lessonNumber &&
        subject == other.subject &&
        classroom == other.classroom;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, lessonNumber.hashCode), subject.hashCode),
        classroom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Lesson')
          ..add('lessonNumber', lessonNumber)
          ..add('subject', subject)
          ..add('classroom', classroom))
        .toString();
  }
}

class LessonBuilder implements Builder<Lesson, LessonBuilder> {
  _$Lesson _$v;

  int _lessonNumber;
  int get lessonNumber => _$this._lessonNumber;
  set lessonNumber(int lessonNumber) => _$this._lessonNumber = lessonNumber;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _classroom;
  String get classroom => _$this._classroom;
  set classroom(String classroom) => _$this._classroom = classroom;

  LessonBuilder();

  LessonBuilder get _$this {
    if (_$v != null) {
      _lessonNumber = _$v.lessonNumber;
      _subject = _$v.subject;
      _classroom = _$v.classroom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Lesson other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Lesson;
  }

  @override
  void update(void updates(LessonBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Lesson build() {
    final _$result = _$v ??
        new _$Lesson._(
            lessonNumber: lessonNumber, subject: subject, classroom: classroom);
    replace(_$result);
    return _$result;
  }
}

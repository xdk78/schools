// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

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

Serializer<Lesson> _$lessonSerializer = new _$LessonSerializer();

class _$LessonSerializer implements StructuredSerializer<Lesson> {
  @override
  final Iterable<Type> types = const [Lesson, _$Lesson];
  @override
  final String wireName = 'Lesson';

  @override
  Iterable serialize(Serializers serializers, Lesson object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.lessonNumber != null) {
      result
        ..add('lessonNumber')
        ..add(serializers.serialize(object.lessonNumber,
            specifiedType: const FullType(int)));
    }
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject,
            specifiedType: const FullType(String)));
    }
    if (object.teacherName != null) {
      result
        ..add('teacherName')
        ..add(serializers.serialize(object.teacherName,
            specifiedType: const FullType(String)));
    }
    if (object.classroom != null) {
      result
        ..add('classroom')
        ..add(serializers.serialize(object.classroom,
            specifiedType: const FullType(String)));
    }

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
        case 'teacherName':
          result.teacherName = serializers.deserialize(value,
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

class _$Lesson extends Lesson {
  @override
  final int lessonNumber;
  @override
  final String subject;
  @override
  final String teacherName;
  @override
  final String classroom;

  factory _$Lesson([void updates(LessonBuilder b)]) =>
      (new LessonBuilder()..update(updates)).build();

  _$Lesson._(
      {this.lessonNumber, this.subject, this.teacherName, this.classroom})
      : super._();

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
        teacherName == other.teacherName &&
        classroom == other.classroom;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, lessonNumber.hashCode), subject.hashCode),
            teacherName.hashCode),
        classroom.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Lesson')
          ..add('lessonNumber', lessonNumber)
          ..add('subject', subject)
          ..add('teacherName', teacherName)
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

  String _teacherName;
  String get teacherName => _$this._teacherName;
  set teacherName(String teacherName) => _$this._teacherName = teacherName;

  String _classroom;
  String get classroom => _$this._classroom;
  set classroom(String classroom) => _$this._classroom = classroom;

  LessonBuilder();

  LessonBuilder get _$this {
    if (_$v != null) {
      _lessonNumber = _$v.lessonNumber;
      _subject = _$v.subject;
      _teacherName = _$v.teacherName;
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
            lessonNumber: lessonNumber,
            subject: subject,
            teacherName: teacherName,
            classroom: classroom);
    replace(_$result);
    return _$result;
  }
}

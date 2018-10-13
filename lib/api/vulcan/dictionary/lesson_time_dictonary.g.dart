// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_time_dictonary.dart';

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

Serializer<LessonTimeDictonary> _$lessonTimeDictonarySerializer =
    new _$LessonTimeDictonarySerializer();

class _$LessonTimeDictonarySerializer
    implements StructuredSerializer<LessonTimeDictonary> {
  @override
  final Iterable<Type> types = const [
    LessonTimeDictonary,
    _$LessonTimeDictonary
  ];
  @override
  final String wireName = 'LessonTimeDictonary';

  @override
  Iterable serialize(Serializers serializers, LessonTimeDictonary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'Id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'Numer',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'Poczatek',
      serializers.serialize(object.start, specifiedType: const FullType(int)),
      'PoczatekTekst',
      serializers.serialize(object.startText,
          specifiedType: const FullType(String)),
      'Koniec',
      serializers.serialize(object.end, specifiedType: const FullType(int)),
      'KoniecTekst',
      serializers.serialize(object.endText,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LessonTimeDictonary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LessonTimeDictonaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Numer':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Poczatek':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PoczatekTekst':
          result.startText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Koniec':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'KoniecTekst':
          result.endText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LessonTimeDictonary extends LessonTimeDictonary {
  @override
  final int id;
  @override
  final int number;
  @override
  final int start;
  @override
  final String startText;
  @override
  final int end;
  @override
  final String endText;

  factory _$LessonTimeDictonary([void updates(LessonTimeDictonaryBuilder b)]) =>
      (new LessonTimeDictonaryBuilder()..update(updates)).build();

  _$LessonTimeDictonary._(
      {this.id,
      this.number,
      this.start,
      this.startText,
      this.end,
      this.endText})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'id');
    }
    if (number == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'number');
    }
    if (start == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'start');
    }
    if (startText == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'startText');
    }
    if (end == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'end');
    }
    if (endText == null) {
      throw new BuiltValueNullFieldError('LessonTimeDictonary', 'endText');
    }
  }

  @override
  LessonTimeDictonary rebuild(void updates(LessonTimeDictonaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LessonTimeDictonaryBuilder toBuilder() =>
      new LessonTimeDictonaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LessonTimeDictonary &&
        id == other.id &&
        number == other.number &&
        start == other.start &&
        startText == other.startText &&
        end == other.end &&
        endText == other.endText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), number.hashCode), start.hashCode),
                startText.hashCode),
            end.hashCode),
        endText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LessonTimeDictonary')
          ..add('id', id)
          ..add('number', number)
          ..add('start', start)
          ..add('startText', startText)
          ..add('end', end)
          ..add('endText', endText))
        .toString();
  }
}

class LessonTimeDictonaryBuilder
    implements Builder<LessonTimeDictonary, LessonTimeDictonaryBuilder> {
  _$LessonTimeDictonary _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  int _start;
  int get start => _$this._start;
  set start(int start) => _$this._start = start;

  String _startText;
  String get startText => _$this._startText;
  set startText(String startText) => _$this._startText = startText;

  int _end;
  int get end => _$this._end;
  set end(int end) => _$this._end = end;

  String _endText;
  String get endText => _$this._endText;
  set endText(String endText) => _$this._endText = endText;

  LessonTimeDictonaryBuilder();

  LessonTimeDictonaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _number = _$v.number;
      _start = _$v.start;
      _startText = _$v.startText;
      _end = _$v.end;
      _endText = _$v.endText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LessonTimeDictonary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LessonTimeDictonary;
  }

  @override
  void update(void updates(LessonTimeDictonaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LessonTimeDictonary build() {
    final _$result = _$v ??
        new _$LessonTimeDictonary._(
            id: id,
            number: number,
            start: start,
            startText: startText,
            end: end,
            endText: endText);
    replace(_$result);
    return _$result;
  }
}

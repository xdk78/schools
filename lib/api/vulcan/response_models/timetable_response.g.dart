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
Serializer<TimetableData> _$timetableDataSerializer =
    new _$TimetableDataSerializer();

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
      'Data',
      serializers.serialize(object.days,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TimetableData)])),
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
        case 'Data':
          result.days.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimetableData)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$TimetableDataSerializer implements StructuredSerializer<TimetableData> {
  @override
  final Iterable<Type> types = const [TimetableData, _$TimetableData];
  @override
  final String wireName = 'TimetableData';

  @override
  Iterable serialize(Serializers serializers, TimetableData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'DzienTekst',
      serializers.serialize(object.dayText,
          specifiedType: const FullType(String)),
      'Dzien',
      serializers.serialize(object.dayUnix, specifiedType: const FullType(int)),
      'NumerLekcji',
      serializers.serialize(object.lessonNumber,
          specifiedType: const FullType(int)),
      'IdPoraLekcji',
      serializers.serialize(object.lessonTimeId,
          specifiedType: const FullType(int)),
      'PrzedmiotNazwa',
      serializers.serialize(object.subjectName,
          specifiedType: const FullType(String)),
      'Sala',
      serializers.serialize(object.classroom,
          specifiedType: const FullType(String)),
      'AdnotacjaOZmianie',
      serializers.serialize(object.changeAdnotation,
          specifiedType: const FullType(String)),
    ];
    if (object.subGroupText != null) {
      result
        ..add('PodzialSkrot')
        ..add(serializers.serialize(object.subGroupText,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  TimetableData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimetableDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'DzienTekst':
          result.dayText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PodzialSkrot':
          result.subGroupText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Dzien':
          result.dayUnix = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'NumerLekcji':
          result.lessonNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'IdPoraLekcji':
          result.lessonTimeId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PrzedmiotNazwa':
          result.subjectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Sala':
          result.classroom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AdnotacjaOZmianie':
          result.changeAdnotation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TimetableResponse extends TimetableResponse {
  @override
  final BuiltList<TimetableData> days;

  factory _$TimetableResponse([void updates(TimetableResponseBuilder b)]) =>
      (new TimetableResponseBuilder()..update(updates)).build();

  _$TimetableResponse._({this.days}) : super._() {
    if (days == null) {
      throw new BuiltValueNullFieldError('TimetableResponse', 'days');
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
    return other is TimetableResponse && days == other.days;
  }

  @override
  int get hashCode {
    return $jf($jc(0, days.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimetableResponse')..add('days', days))
        .toString();
  }
}

class TimetableResponseBuilder
    implements Builder<TimetableResponse, TimetableResponseBuilder> {
  _$TimetableResponse _$v;

  ListBuilder<TimetableData> _days;
  ListBuilder<TimetableData> get days =>
      _$this._days ??= new ListBuilder<TimetableData>();
  set days(ListBuilder<TimetableData> days) => _$this._days = days;

  TimetableResponseBuilder();

  TimetableResponseBuilder get _$this {
    if (_$v != null) {
      _days = _$v.days?.toBuilder();
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
      _$result = _$v ?? new _$TimetableResponse._(days: days.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'days';
        days.build();
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

class _$TimetableData extends TimetableData {
  @override
  final String dayText;
  @override
  final String subGroupText;
  @override
  final int dayUnix;
  @override
  final int lessonNumber;
  @override
  final int lessonTimeId;
  @override
  final String subjectName;
  @override
  final String classroom;
  @override
  final String changeAdnotation;

  factory _$TimetableData([void updates(TimetableDataBuilder b)]) =>
      (new TimetableDataBuilder()..update(updates)).build();

  _$TimetableData._(
      {this.dayText,
      this.subGroupText,
      this.dayUnix,
      this.lessonNumber,
      this.lessonTimeId,
      this.subjectName,
      this.classroom,
      this.changeAdnotation})
      : super._() {
    if (dayText == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'dayText');
    }
    if (dayUnix == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'dayUnix');
    }
    if (lessonNumber == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'lessonNumber');
    }
    if (lessonTimeId == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'lessonTimeId');
    }
    if (subjectName == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'subjectName');
    }
    if (classroom == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'classroom');
    }
    if (changeAdnotation == null) {
      throw new BuiltValueNullFieldError('TimetableData', 'changeAdnotation');
    }
  }

  @override
  TimetableData rebuild(void updates(TimetableDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TimetableDataBuilder toBuilder() => new TimetableDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimetableData &&
        dayText == other.dayText &&
        subGroupText == other.subGroupText &&
        dayUnix == other.dayUnix &&
        lessonNumber == other.lessonNumber &&
        lessonTimeId == other.lessonTimeId &&
        subjectName == other.subjectName &&
        classroom == other.classroom &&
        changeAdnotation == other.changeAdnotation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, dayText.hashCode),
                                subGroupText.hashCode),
                            dayUnix.hashCode),
                        lessonNumber.hashCode),
                    lessonTimeId.hashCode),
                subjectName.hashCode),
            classroom.hashCode),
        changeAdnotation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TimetableData')
          ..add('dayText', dayText)
          ..add('subGroupText', subGroupText)
          ..add('dayUnix', dayUnix)
          ..add('lessonNumber', lessonNumber)
          ..add('lessonTimeId', lessonTimeId)
          ..add('subjectName', subjectName)
          ..add('classroom', classroom)
          ..add('changeAdnotation', changeAdnotation))
        .toString();
  }
}

class TimetableDataBuilder
    implements Builder<TimetableData, TimetableDataBuilder> {
  _$TimetableData _$v;

  String _dayText;
  String get dayText => _$this._dayText;
  set dayText(String dayText) => _$this._dayText = dayText;

  String _subGroupText;
  String get subGroupText => _$this._subGroupText;
  set subGroupText(String subGroupText) => _$this._subGroupText = subGroupText;

  int _dayUnix;
  int get dayUnix => _$this._dayUnix;
  set dayUnix(int dayUnix) => _$this._dayUnix = dayUnix;

  int _lessonNumber;
  int get lessonNumber => _$this._lessonNumber;
  set lessonNumber(int lessonNumber) => _$this._lessonNumber = lessonNumber;

  int _lessonTimeId;
  int get lessonTimeId => _$this._lessonTimeId;
  set lessonTimeId(int lessonTimeId) => _$this._lessonTimeId = lessonTimeId;

  String _subjectName;
  String get subjectName => _$this._subjectName;
  set subjectName(String subjectName) => _$this._subjectName = subjectName;

  String _classroom;
  String get classroom => _$this._classroom;
  set classroom(String classroom) => _$this._classroom = classroom;

  String _changeAdnotation;
  String get changeAdnotation => _$this._changeAdnotation;
  set changeAdnotation(String changeAdnotation) =>
      _$this._changeAdnotation = changeAdnotation;

  TimetableDataBuilder();

  TimetableDataBuilder get _$this {
    if (_$v != null) {
      _dayText = _$v.dayText;
      _subGroupText = _$v.subGroupText;
      _dayUnix = _$v.dayUnix;
      _lessonNumber = _$v.lessonNumber;
      _lessonTimeId = _$v.lessonTimeId;
      _subjectName = _$v.subjectName;
      _classroom = _$v.classroom;
      _changeAdnotation = _$v.changeAdnotation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimetableData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TimetableData;
  }

  @override
  void update(void updates(TimetableDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TimetableData build() {
    final _$result = _$v ??
        new _$TimetableData._(
            dayText: dayText,
            subGroupText: subGroupText,
            dayUnix: dayUnix,
            lessonNumber: lessonNumber,
            lessonTimeId: lessonTimeId,
            subjectName: subjectName,
            classroom: classroom,
            changeAdnotation: changeAdnotation);
    replace(_$result);
    return _$result;
  }
}

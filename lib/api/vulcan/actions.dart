import 'dart:async';
import 'package:schools/api/vulcan/response_models/dictonary_response.dart';

class LoadDictonary {}

class SetDictonaryAction {
  final DictonaryResponse dictResponse;
  SetDictonaryAction(this.dictResponse);
}

class LoadTimetable {}

import 'package:flutter/material.dart';
import 'package:schools/reducers/app_state.dart';
import 'reducers/app_reducer.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'ui/login.dart';
import 'ui/login_librus.dart';
import 'ui/login_vulcan.dart';
import 'ui/timetable.dart';
import 'package:redux_logging/redux_logging.dart';

final logger = new LoggingMiddleware.printer();

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState(), middleware: [new LoggingMiddleware.printer()]);
  runApp(SchoolsApp(
    store: store,
  ));
}

class SchoolsApp extends StatelessWidget {
  final Store<AppState> store;

  SchoolsApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Schools',
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.indigo,
        ),
        routes: {
          '/': (context) => LoginScreen(),
          '/loginlibrus': (context) => LoginLibrusScreen(),
          '/loginvulcan': (context) => LoginVulcanScreen(),
          '/timetable': (context) => TimetableScreen(),
        },
      )
    );
  }
}

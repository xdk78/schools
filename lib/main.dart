import 'package:flutter/material.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/store/app_reducer.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_middleware.dart';
import 'package:schools/api/vulcan/middleware.dart';
import 'package:schools/api/librus/auth/librus_auth_middleware.dart';
import 'package:schools/ui/login.dart';
import 'package:schools/ui/login_librus.dart';
import 'package:schools/ui/login_vulcan.dart';
import 'package:schools/ui/timetable.dart';
import 'package:schools/keys.dart';
import 'package:redux_logging/redux_logging.dart';

final logger = new LoggingMiddleware.printer();

void main() {
  final store =
      Store<AppState>(appReducer, initialState: AppState(), middleware: [
    new LoggingMiddleware.printer(),
    vulcanAuthMiddleware,
    vulcanMiddleware,
    librusAuthMiddleware,
  ]);
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
          navigatorKey: Keys.navKey,
          theme: ThemeData(
              primaryColor: Colors.white,
              accentColor: Colors.indigo,
              hintColor: Colors.grey,
              inputDecorationTheme: new InputDecorationTheme(
                labelStyle: new TextStyle(color: Colors.indigo),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo),
                ),
              )),
          routes: {
            '/': (context) => LoginScreen(),
            '/loginlibrus': (context) => LoginLibrusScreen(),
            '/loginvulcan': (context) => LoginVulcanScreen(),
            '/timetable': (context) => TimetableScreen(),
          },
        ));
  }
}

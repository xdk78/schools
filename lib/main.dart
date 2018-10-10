import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'redux/appstate.dart';
import 'login/login.dart';
import 'loginlibrus/loginlibrus.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final Store<int> store = Store<int>(
    appReducer,
    initialState: AppState.initial(),
    middleware: createStoreMiddleware(),
  );
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => LoginScreen(),
          '/loginlibrus': (context) => LoginLibrusScreen(),
        },
      )
    );
  }
}

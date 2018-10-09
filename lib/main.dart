import 'package:flutter/material.dart';
import 'login/login.dart';
import 'loginlibrus/loginlibrus.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginScreen(),
        '/loginlibrus': (context) => LoginLibrusScreen(),
      },
    );
  }
}

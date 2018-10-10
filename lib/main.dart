import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/login_librus.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginScreen(),
        '/loginlibrus': (context) => LoginLibrusScreen(),
      },
    );
  }
}

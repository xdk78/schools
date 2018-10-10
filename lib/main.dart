import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/login_librus.dart';
import 'ui/timetable.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schools',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.indigo,
      ),
      routes: {
        '/': (context) => LoginScreen(),
        '/loginlibrus': (context) => LoginLibrusScreen(),
        '/timetable': (context) => TimetableScreen(),
      },
    );
  }
}

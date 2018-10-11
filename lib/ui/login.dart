import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logowanie'),
      ),
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Zaloguj się poprzez',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 24.0))),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/loginlibrus');
                },
                leading: Icon(Icons.school),
                title: Text('Konto Librus'),
                subtitle: Text('Zaloguj się do systemu Synergia'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/loginvulcan');
                },
                leading: Icon(Icons.message),
                title: Text('Konto Vulcan'),
                subtitle: Text('Zaloguj się do systemu UONET+'),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}

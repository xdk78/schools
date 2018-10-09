import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zaloguj się'),
      ),
      body: Center(
          child: new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        new Padding(
            padding: const EdgeInsets.all(15.00),
            child: new Text('Zaloguj się poprzez',
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 25.00))),
        new Card(
          margin: new EdgeInsets.symmetric(horizontal: 20.0),
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/loginlibrus');
                },
                leading: const Icon(Icons.school),
                title: const Text('Konto Librus'),
                subtitle: const Text('Zaloguj się do systemu Synergia'),
              ),
              new ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Konto Vulcan'),
                subtitle: const Text('Zaloguj się do systemu UONET+'),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}

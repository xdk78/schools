import 'package:flutter/material.dart';

class LoginLibrusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        new Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.00),
            child: new Text('Konto Librus',
                textAlign: TextAlign.center,
                style: new TextStyle(fontSize: 25.00))),
        new Card(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.00),
                child: Column(children: [
                  new TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  new TextField(
                    decoration: InputDecoration(hintText: 'Hasło'),
                  ),
                  new FlatButton(
                    textColor: Colors.green[400],
                    child: const Text('Zaloguj się'),
                    onPressed: () {},
                  )
                ])))
      ])),
    );
  }
}

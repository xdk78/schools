import 'package:flutter/material.dart';

class LoginLibrusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logowanie - Librus'),
      ),
      body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Card(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Hasło'),
                    obscureText: true,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12.0),
                      child: FlatButton(
                        textColor: Theme.of(context).accentColor,
                        color: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0)),
                        child: Text(
                          'Zaloguj się',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {},
                      ))
                ])))
      ])),
    );
  }
}

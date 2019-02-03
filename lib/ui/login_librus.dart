import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/api/librus/auth/librus_auth_actions.dart';

class LoginLibrusScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginLibrusState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _LoginLibrusState extends State<LoginLibrusScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();
  RegExp _emailRegex = RegExp(r'(\S+)[\@]([a-zA-Z0-9]+)[\.]([a-zA-Z0-9]+)');

  String _validateEmail(String value) {
    if (!_emailRegex.hasMatch(value)) {
      return 'Nieprawidłowy adres Email';
    }
    return null;
  }

  void submit(VoidCallback callback) {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();
      callback();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logowanie - Librus'),
      ),
      body: new Center(
          child: new Card(
        margin: new EdgeInsets.all(12.0),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: new Form(
              key: this._formKey,
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  new TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                          hintText: 'Email', labelText: 'Email'),
                      validator: this._validateEmail,
                      onSaved: (String value) {
                        this._data.email = value;
                      }),
                  new TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: 'Hasło', labelText: 'Hasło'),
                      onSaved: (String value) {
                        this._data.password = value;
                      }),
                  new Container(
                      margin: EdgeInsets.only(top: 12.0),
                      child: StoreConnector<AppState, VoidCallback>(
                          converter: (store) {
                        return () => store.dispatch(AuthenticateLibrusAction(
                              email: this._data.email,
                              password: this._data.password,
                            ));
                      }, builder: (context, callback) {
                        return FlatButton(
                          textColor: Theme.of(context).accentColor,
                          color: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                          child: new Text(
                            'Zaloguj się',
                            style: new TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          onPressed: () {
                            this.submit(callback);
                          },
                        );
                      })),
                ],
              ),
            )),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';

class LoginVulcanScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginVulcanState();
}

class _LoginData {
  String token = '';
  String symbol = '';
  String pin = '';
}

class _LoginVulcanState extends State<LoginVulcanScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData _data = new _LoginData();
  RegExp _pinRegex = RegExp(r"^[0-9]{6}");
  RegExp _tokenRegex = RegExp(r"^[\w]{8}$");

  String _validatePin(String value) {
    if (!_pinRegex.hasMatch(value)) {
      return 'pin się nie zgadza';
    }
    return null;
  }

  String _validateSymbol(String value) {
    return null;
  }

  String _validateToken(String value) {
    if (!_tokenRegex.hasMatch(value)) {
      return 'token się nie zgadza';
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
        title: Text('Logowanie - UONET+'),
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
                      decoration: new InputDecoration(
                          hintText: 'token', labelText: 'Token'),
                      validator: this._validateToken,
                      onSaved: (String value) {
                        this._data.token = value;
                      }),
                  new TextFormField(
                      decoration: new InputDecoration(
                          hintText: 'symbol', labelText: 'Symbol szkoły'),
                      validator: this._validateSymbol,
                      onSaved: (String value) {
                        this._data.symbol = value;
                      }),
                  new TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          hintText: 'PIN', labelText: 'PIN'),
                      validator: this._validatePin,
                      onSaved: (String value) {
                        this._data.pin = value;
                      }),
                  new Container(
                      margin: EdgeInsets.only(top: 12.0),
                      child: StoreConnector<AppState, VoidCallback>(
                          onInit: (store) {
                        store.dispatch(LoadSavedVulcanAuthState());
                      }, converter: (store) {
                        return () => store.dispatch(AuthenticateVulcanAction(
                            pin: this._data.pin,
                            symbol: this._data.symbol,
                            token: this._data.token));
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

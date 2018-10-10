import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/reducers/app_state.dart';
import 'package:schools/reducers/app_actions.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logowanie'),
      ),
      body: StoreConnector<AppState, bool>(
        converter: (store) => store.state.isLoading,
        builder: (context, isLoading) {
          if (isLoading) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                StoreConnector<AppState, VoidCallback>(
                  converter: (store) {
                    return () => store.dispatch(StopLoading());
                  },
                  builder: (context, callback) {
                    return FlatButton(
                      child: Text('nacisknij'),
                      onPressed: () {
                        callback();
                      },
                    );
                  }
                ),
                Text('Trueee'),
              ]
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                StoreConnector<AppState, VoidCallback>(
                  converter: (store) {
                    return () => store.dispatch(StartLoading());
                  },
                  builder: (context, callback) {
                    return FlatButton(
                      child: Text('lelel'),
                      onPressed: () {
                        callback();
                      },
                    );
                  }
                ),
                Text('Falsee'),
              ]
            );
          }
        },
      )
    );
  }
}

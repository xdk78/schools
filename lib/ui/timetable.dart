import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/api/vulcan/auth/vulcan_auth_actions.dart';
import 'package:schools/store/timetable/timetable_actions.dart';
import 'package:schools/store/timetable/timetable_state.dart';

class TimetableScreen extends StatelessWidget {
  final List<ListItem> items = List<ListItem>.generate(
    24,
    (i) => i % 6 == 0
        ? HeadingItem("Poniedziałek")
        : LessonItem("Jezyk polski", "8:00 - 8:45"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Plan lekcji'),
        ),
        body: StoreConnector<AppState, TimetableState>(
            converter: (store) => store.state.timetableState,
            onInit: (store) {
              store.dispatch(LoadTimetableAction());
            },
            builder: (context, state) {
              print(state);
              return ListView.builder(
                  itemCount: state.monday.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.monday[index].subject),
                      subtitle: Text(state.monday[index].classroom),
                    );
                  });
            }));
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class LessonItem implements ListItem {
  final String teacher;
  final String body;

  LessonItem(this.teacher, this.body);
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:schools/store/app_state.dart';
import 'package:schools/models/lesson.dart';
import 'package:schools/store/timetable/timetable_actions.dart';
import 'package:schools/store/timetable/timetable_state.dart';
import 'package:sticky_headers/sticky_headers.dart';

List<DayItem> _mapTimetable(TimetableState timetable) {
  var items = List<DayItem>();
  items.add(DayItem("Poniedziałek", timetable.monday.toList()));
  items.add(DayItem("Wtorek", timetable.tuesday.toList()));
  items.add(DayItem("Środa", timetable.wednesday.toList()));
  items.add(DayItem("Czwartek", timetable.thursday.toList()));
  items.add(DayItem("Piątek", timetable.friday.toList()));
  return items;
}

Widget _getDayItemWidget(DayItem dayitem) {
  return new StickyHeader(
    header: new Container(
      height: 50.0,
      color: Colors.blueGrey[700],
      padding: new EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: new Text(
        dayitem.day,
        style: const TextStyle(color: Colors.white),
      ),
    ),
    content: new Container(
        child: new ListView.builder(
      itemCount: dayitem.lessons.length,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = dayitem.lessons[index];
        return Card(
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: new Column(children: [
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text(item.subject,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold)),
                      new Text("Lekcja #" + item.lessonNumber.toString())
                    ]),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      new Text("Nauczyciel: " + item.teacherName),
                      new Text("Sala " + item.classroom)
                    ])
              ])),
        );
      },
    )),
  );
}

class TimetableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Plan lekcji'),
        ),
        body: StoreConnector<AppState, List<DayItem>>(
            converter: (store) => _mapTimetable(store.state.timetableState),
            onInit: (store) {
              store.dispatch(LoadTimetableAction());
            },
            builder: (context, state) {
              return CustomScrollView(slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  Column(
                    children: <Widget>[
                      _getDayItemWidget(state[0]),
                      _getDayItemWidget(state[1]),
                      _getDayItemWidget(state[2]),
                      _getDayItemWidget(state[3]),
                      _getDayItemWidget(state[4]),
                    ],
                  )
                ]))
              ]);
            }));
  }
}

class DayItem {
  final String day;
  final List<Lesson> lessons;

  DayItem(this.day, this.lessons);
}

import 'package:flutter/material.dart';

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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is LessonItem) {
            return ListTile(
              title: Text(item.teacher),
              subtitle: Text(item.body),
            );
          }
        },
      ),
    );
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

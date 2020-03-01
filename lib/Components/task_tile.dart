import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onChanged;

  TaskTile(this.task, {@required this.onChanged}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.name,
        style: TextStyle(
          fontSize: 20,
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: (checkboxState) {
          onChanged();
        },
      ),
    );
  }
}
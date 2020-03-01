import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TasksViewModel extends ChangeNotifier{
  List<Task> _tasks = List<Task>();

  void addTask({String title}) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  String get tasksCountMessage {
    int length = tasksCount;
    switch (length) {
      case 0: return('No tasks');
      case 1: return('1 task');
      default: return('${_tasks.length} tasks');
    }
  }

  int get tasksCount {
    return _tasks.length;
  }
}
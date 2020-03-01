import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/view_models/tasks_view_model.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksViewModel>(
      builder: (context, tasksVieModel, child) {
        return ListView.builder(
          itemCount: tasksVieModel.tasksCount,
          itemBuilder: (context, index) {
            final task = tasksVieModel.tasks[index];
            return TaskTile(task,
              onChanged: () => tasksVieModel.updateTask(task));
          });
      }
    );
  }
}
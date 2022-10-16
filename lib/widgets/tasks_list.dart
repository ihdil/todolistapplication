import 'package:flutter/material.dart';
import 'package:todolistapplication/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:todolistapplication/model/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: TaskData.tasks[index].isDone,
              taskTitle: TaskData.tasks[index].name,
              checkboxchange: (newValue) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
              listTileDelete: () {
                TaskData.deleteTask(TaskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}

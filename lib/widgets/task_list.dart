import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxchange;
  final void Function() listTileDelete;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxchange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Color.fromARGB(255, 67, 65, 56),
        value: isChecked,
        onChanged: checkboxchange,
      ),
      onLongPress: listTileDelete,
    );
  }
}

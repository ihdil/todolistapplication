import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapplication/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newtasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 67, 65, 56),
                fontWeight: FontWeight.bold,
              )),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newtasktitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newtasktitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFF6C593E),
              primary: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todolistapplication/screens/add_task_screen.dart';
import 'package:todolistapplication/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen((newtasktitle) {
                      //setState(() {
                      //tasks.add(Task(name: newtasktitle));
                      //Navigator.pop(context);
                      //});
                    })),
              ),
            );
          },
          backgroundColor: Color.fromARGB(255, 67, 65, 56),
          child: Icon(Icons.add),
        ),
        backgroundColor: Color.fromARGB(255, 67, 65, 56),
        body: Container(
            padding: const EdgeInsets.only(
              top: 60,
              left: 20,
              right: 20,
              bottom: 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.playlist_add_check,
                      size: 40,
                      color: Color.fromARGB(255, 67, 65, 56),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'To Do List',
                      style: TextStyle(
                        color: Color.fromARGB(255, 67, 65, 56),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: TextStyle(
                    color: Color.fromARGB(255, 67, 65, 56),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xDEACB5B6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TasksList(),
                  ),
                )
              ],
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'image/background1.jpg',
              ),
            ))));
  }
}

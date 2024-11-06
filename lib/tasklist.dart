import 'package:flutter/material.dart';
import 'package:todo_list/task.dart';
import 'package:todo_list/tasktile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy milk"),
    Task(name: "Buy milk")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTile: tasks[index].name,
          checkBoxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
    // return ListView(
    //   children: [
    //     TaskTile(

    //       taskTile: tasks[0].name,
    //       isChecked: tasks[0].isDone,
    //     ),
    //   ],
    // );
  }
}

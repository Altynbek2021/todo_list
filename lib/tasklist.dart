import 'package:flutter/material.dart';
import 'package:todo_list/task.dart';
import 'package:todo_list/tasktile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  const TasksList(this.tasks, {super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          taskTile: widget.tasks[index].name,
          checkBoxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
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

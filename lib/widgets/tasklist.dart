import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/tasksdata.dart';
import 'package:todo_list/widgets/tasktile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Tasksdata>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: taskData.tasks[index].isDone,
            taskTile: taskData.tasks[index].name,
            checkBoxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}

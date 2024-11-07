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
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTile: task.name,
            checkBoxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}

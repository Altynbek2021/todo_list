import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/tasksdata.dart';
import 'package:todo_list/widgets/tasktile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<Tasksdata>(context).tasks[index].isDone,
          taskTile: Provider.of<Tasksdata>(context).tasks[index].name,
          checkBoxCallback: (checkboxState) {
            // setState(() {
            //   Provider.of<Tasksdata>(context).tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: Provider.of<Tasksdata>(context).tasks.length,
    );
  }
}

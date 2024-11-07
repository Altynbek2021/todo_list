import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    required this.isChecked,
    required this.taskTile,
    required this.checkBoxCallback,
    required this.removeTaskCallback,
  });

  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkBoxCallback;
  final Function removeTaskCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: checkBoxCallback),
      onLongPress: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Hello!"),
                content: Text("Are you sure to delete this task?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text("No"),
                  ),
                  TextButton(
                    onPressed: () {
                      removeTaskCallback();
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text("Yes"),
                  ),
                ],
              );
            });
      },
    );
  }
}

// class CustomChekbox extends StatelessWidget {
//   const CustomChekbox({
//     super.key,
//     required this.newvalue,
//     required this.changeValue,
//   });
//   final bool newvalue;
//   final ValueChanged changeValue;

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: newvalue,
//       onChanged: changeValue,
//     );
//   }
// }

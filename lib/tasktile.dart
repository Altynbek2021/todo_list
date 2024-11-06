import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    required this.isChecked,
    required this.taskTile,
    required this.checkBoxCallback,
  });

  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkBoxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTile,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(value: isChecked, onChanged: checkBoxCallback));
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

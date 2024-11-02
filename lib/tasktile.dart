import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is task.",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CustomChekbox(
          newvalue: isChecked,
          changeValue: (newvalue) {
            setState(() {
              isChecked = newvalue;
            });
          }),
    );
  }
}

class CustomChekbox extends StatelessWidget {
  const CustomChekbox({
    super.key,
    required this.newvalue,
    required this.changeValue,
  });
  final bool newvalue;
  final Function changeValue;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: newvalue,
      onChanged: (condition) {
        changeValue(condition);
        //   setState(() {
        //     isChecked = condition!;
        //   });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_list/tasktile.dart';

class Tasks_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [TaskTile()],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/tasksdata.dart';
import 'package:todo_list/screen/tastks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tasksdata(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

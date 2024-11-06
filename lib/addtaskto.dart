import 'package:flutter/material.dart';

class AddtasktoScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddtasktoScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 35,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent, elevation: 20),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: const Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:todo_app/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}

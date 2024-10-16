import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_api/src/pages/add_todo/controllers/add_todo_controller.dart';

class AddTodoScreen extends GetView<AddTodoController> {
  const AddTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: controller.addTodo,
            child: Text('add todo'),
          )
        ],
      ),
    );
  }
}

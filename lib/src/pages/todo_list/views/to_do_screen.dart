import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_api/src/pages/shared/shayan_snack_bar.dart';
import 'package:to_do_api/src/pages/todo_list/controllers/to_do_list_controller.dart';
import 'package:to_do_api/src/pages/todo_list/views/widgets/todo_item.dart';

class ToDoScreen extends GetView<ToDoListController> {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('to do list'),
      ),
      body: SafeArea(
        child: Obx(() => _body()),
      ),
    );
  }

  Widget _body() {
    if (controller.isLoadingMode.value) {
      return loading();
    } else if (controller.isRetryMode.value) {
      shayanShowSnackBar(value: 'can not get data');
      return retry();
    } else {
      return _todos();
    }
  }

  Widget loading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget retry() => Center(
        child: FloatingActionButton(
          onPressed: controller.getData,
          child: const Icon(Icons.refresh_outlined),
        ),
      );

  Widget _todos() => ListView.separated(
      separatorBuilder: (_, index) => const Divider(),
      itemCount: controller.todos.length,
      itemBuilder: (context, index) => TodoItem(
          onTap: () => controller.goToNextPage(id: controller.todos[index].id),
          title: controller.todos[index].title,
          id: controller.todos[index].id));
}

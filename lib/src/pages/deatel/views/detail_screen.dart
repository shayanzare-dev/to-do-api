import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_api/src/pages/deatel/controllers/detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail screen'),
      ),
      body: SafeArea(child: _body()),
    );
  }

  Widget _body() => Column(
        children: [
          Text(
              '${controller.todo.value?.completed.toString()}${controller.todo.value?.title}')
        ],
      );
}

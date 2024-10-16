import 'package:flutter/material.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('to do list'),
      ),
      body: SafeArea(child: _body()),
    );
  }

  Widget _body() => Column(
        children: [],
      );
}

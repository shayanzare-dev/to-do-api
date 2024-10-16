import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
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
        children: [],
      );
}

import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.title, required this.id, required this.onTap});

  final String title;
  final int id;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text('${id.toString()} -- $title')),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: onTap,
          )
        ],
      ),
    );
  }
}

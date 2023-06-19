import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int allTodos;
  final int allCompleted;

  const Counter({Key? key, required this.allCompleted, required this.allTodos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 27),
      child: Text("$allCompleted/$allTodos",
          style: TextStyle(
              fontSize: 44,
              color: allCompleted == allTodos
                  ? Color.fromARGB(255, 21, 214, 72)
                  : Color.fromARGB(255, 200, 194, 194),
              fontWeight: FontWeight.bold)),
    );
  }
}

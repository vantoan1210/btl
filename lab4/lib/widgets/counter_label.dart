// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:lab4/counter/counter_controller.dart';

class CounterLabel extends StatelessWidget {
  const CounterLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton (
          onPressed: CounterController().decrement,
          icon: const Icon(Icons.remove),
          splashRadius: 24,
        ),
        IconButton(
          onPressed: CounterController().decrement,
          icon: const Icon(Icons.add),
          )
      ],
    );
  }
}
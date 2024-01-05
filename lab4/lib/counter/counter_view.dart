import 'package:flutter/material.dart';
// ignore: prefer_typing_uninitialized_variables
// ignore: depend_on_referenced_packages;
import 'counter_button.dart';
import '../widgets/counter_label.dart';

// Chú ý đường dẫn và tên file của widgets

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CounterLabel(),
            const CounterButton(),
            Text(
              'Chạm vào - để giảm, chạm vào + để tăng',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}

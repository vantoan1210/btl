import 'package:flutter/material.dart';
import 'package:lab4/counter/counter_model.dart';

class CounterController with ChangeNotifier {
  CounterController._();
  static final _controller = CounterController._();
  factory CounterController() {
    return _controller;
  }

  int _counter = CounterModel().counter;

  int get counter => _counter;

  void increment() {
    _counter = _counter + 1;
    notifyListeners();
  }

  void decrement() {
    _counter = _counter - 1;
    notifyListeners();
  }
}

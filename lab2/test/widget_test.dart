import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
 });
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Counter App')),
        body: const Center(child: Counter()),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
 }
}

class Counter extends StatefulWidget {
 const Counter({Key? key}) : super(key: key);

 @override
 _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
 int _counter = 0;

 void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
 }

 @override
 Widget build(BuildContext context) {
    return Text('Counter: $_counter', style: Theme.of(context).textTheme.headline4);
 }
}
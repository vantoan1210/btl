import 'package:flutter/material.dart';

// Hàm đảo ngược một chuỗi
String reverseString(String input) {
  return input.split('').reversed.join();
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'HUMG'; // Thay đổi chuỗi cần đảo ở đây
    String reversed = reverseString(str);
    print('Chuỗi đảo ngược của $str là: $reversed');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Center(
          child: Text(
            'Chuỗi đảo ngược của $str là: $reversed',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

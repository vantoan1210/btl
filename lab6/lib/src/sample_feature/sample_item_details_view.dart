import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nguyễn vản toàn-2021050813',
              style: TextStyle(
                color: Color.fromARGB(255, 243, 33, 177),
                
              ),
            ),
            SizedBox(height: 50), // Adjust the height as needed
            Image.network(
              'https://scontent.fhan5-1.fna.fbcdn.net/v/t1.15752-9/386866410_2652456021577552_1892590073439014836_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=-RoPg7hzayQAX-N2QI4&_nc_oc=AQnbN57ImlxhGPjKcAuXUhUNyi5euPFi3oLmK93un-rx4riIWfXKh3BW1vpWpO9gh00zUzxVdMJ2CbKHpmrfjeqH&_nc_ht=scontent.fhan5-1.fna&oh=03_AdSu5-y7omaC9VMdY0EN4MNvlizsvyh6Q4vVRFHosjKzMg&oe=65772D40',
              height: 320, // Adjust the height as needed
              width: 400, // Adjust the width as needed
            ),
          ],
        ),
      ),
    );
  }
}
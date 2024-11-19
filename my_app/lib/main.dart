import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // Center widget to align content both horizontally and vertically
          child: Padding(
            padding: EdgeInsets.all(30.0), // Adds 30 pixels of padding on all sides
            child: Text(
              "I am developed by Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color: Color.fromRGBO(255, 255, 255, 1), // White text color
                backgroundColor: Color.fromRGBO(11, 1, 1, 1), // Dark background color
              ),
            ),
          ),
        ),
      ),
    );
  }
}

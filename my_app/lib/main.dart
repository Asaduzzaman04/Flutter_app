import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Set the background color to blue
          centerTitle: true, // Center the title text
          title: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white, // Set the text color to white
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Add padding for x and y axes
            decoration: BoxDecoration(
              color: Colors.black, // Background color of the text container
              borderRadius: BorderRadius.circular(8.0), // Small border radius
            ),
            child: Text(
              "I am developed by Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0, // Adjusted font size
                color: Colors.white, // Text color set to white
              ),
            ),
          ),
        ),
      ),
    );
  }
}

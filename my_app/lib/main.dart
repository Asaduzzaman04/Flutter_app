import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // Corrected the app name

class MyApp extends StatelessWidget { // Renamed the class to avoid naming conflicts
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( // Fixed parentheses
          backgroundColor: Colors.black,
          title: Text("Home Page", style: TextStyle(
            color: Colors.white,
          ),),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),

            decoration: BoxDecoration(
              color: Colors.black87, // Removed backgroundColor, used color instead
              borderRadius: BorderRadius.circular(8.0),
            ),

            child: Text(
              "I am developed by Flutter", // Fixed the text
              style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color:Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

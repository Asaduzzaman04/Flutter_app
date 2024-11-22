import 'dart:ffi';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(FlutterApp());

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        //* app bar configuration start
        appBar: AppBar(
          // leading button
          leading: IconButton(
            onPressed: () => {print("back to home page successfully")},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          // app bar title
          title: const Text(
            'Form Validation',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "PoopinsBold"),
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          centerTitle: true,
          shadowColor: const Color.fromARGB(255, 80, 95, 153),
          elevation: 1,
          actions: [
            // app bar profile icons
            IconButton(
              onPressed: () => {print("clicked at user profile")},
              icon: const Icon(Icons.person_pin),
            ),
          ],
        ),
        // * app bar configuration end

        //?body widgets start here
        body: const Center( // Use Center to center the Column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: "your name", hintText: "enter your name"),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "your email", hintText: "enter your email"),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "your phone number",
                    hintText: "enter your phone number"),
              ),
              
            ],
          ),
        ),
        //?body widgets end here
      ),
    );
  }
}

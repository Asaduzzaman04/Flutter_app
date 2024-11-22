import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textController = TextEditingController(); // Create a TextEditingController

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.ac_unit_outlined, color: Colors.white),
                  onPressed: () {
                    print("hello world");
                  },
                ),
                const SizedBox(
                    height: 10), // Add some space between the icon and text
                const Text(
                  "I am developed by Flutter",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "poppins"
                  ),
                ),
                const SizedBox(
                    height: 20), // Add space between text and TextField
                TextField(
                  controller: _textController, // Assign the controller
                  decoration: InputDecoration(
                    labelText: 'Enter something',
                    labelStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                ElevatedButton( // Add a button to retrieve the value
                  onPressed: () {
                    final String enteredText = _textController.text; // Get the text
                    print("The user entered: $enteredText");
                  },
                  child: const Text('Get Input'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
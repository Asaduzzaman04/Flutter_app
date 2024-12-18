import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/pages/TodoApp.dart';
import 'package:todo_app/pages/screen1.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
      // home : Screen1()
    );
  }
}

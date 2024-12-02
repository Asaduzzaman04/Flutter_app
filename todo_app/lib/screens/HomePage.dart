import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/AppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Home activity starts from here
    return Scaffold(
      backgroundColor: tdBGColor,
      // AppBar starts from here
      appBar: buildAppBar(),
      //home main actibity start form here
      body: Column(
        children: [
          // search-bar-container
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: TextField(
              
            ),
          )
        ],
      ),
    );
  }
}

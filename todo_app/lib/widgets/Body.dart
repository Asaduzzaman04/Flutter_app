import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todo_item.dart';

Widget bodyWidget() {
  return Column(
    children: [
      // search-bar-container
      _SearchBox(),
      // task-List
      Expanded(
        child: ListView(
          children: [
            Container(
                padding : EdgeInsets.all(20),
              child: Text("All Todo's",
                style:TextStyle(
                fontWeight: FontWeight.bold,
                 fontSize : 33
                ),
                textAlign: TextAlign.center,
              ),
            ),


            //all-todo-Tasks
            TodoItems()
          ],
        ),
      ),
    ],
  );
}

//====> This widget is now public, so it can be accessed in other files <====\\
Widget _SearchBox() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 9),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(40),
    ),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        contentPadding: EdgeInsets.all(0),
        hintText: 'Add task',
        border: InputBorder.none,
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          maxWidth: 30,
        ),
      ),
      style: TextStyle(
        color: tdGrey,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

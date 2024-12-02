import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class TodoItems extends StatefulWidget {
  const TodoItems({super.key});

  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        tileColor: Colors.white,
        //check box
        leading: Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        // Task-text
        title: Text(
          "will Distroy Bangladesh",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              decoration: TextDecoration.lineThrough),
          textAlign: TextAlign.center,
        ),
        //delete button
        trailing: Container(
            height: 35,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: tdRed,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Colors.white,
            )),
      ),
    );
  }
}

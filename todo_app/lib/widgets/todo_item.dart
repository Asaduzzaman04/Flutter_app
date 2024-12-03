import 'package:flutter/material.dart';
import 'package:todo_app/Model/ToDo.dart';
import 'package:todo_app/constants/colors.dart';

class TodoItems extends StatefulWidget {
  final ToDo todo;
  final Function(ToDo)? onToggle; // Callback for toggle functionality
  final Function(ToDo)? onDelete; // Optional callback for deleting a task

  const TodoItems({
    Key? key,
    required this.todo,
    this.onToggle, // Optional external control for toggle
    this.onDelete, // Optional external control for delete
  }) : super(key: key);

  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  late bool isDone;

  @override
  void initState() {
    super.initState();
    isDone = widget.todo.isDone; // Initialize the local state
  }

  dynamic _toggleTodo() {
    setState(() {
      isDone = !isDone; // Toggle the local isDone state
      widget.todo.isDone = isDone; // Sync with the original ToDo object
    });

    if (widget.onToggle != null) {
      widget.onToggle!(widget.todo); // External callback if provided
    }
  }

  void _deleteTodo() {
    if (widget.onDelete != null) {
      widget.onDelete!(widget.todo); // Call delete callback if provided
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        onTap: _toggleTodo, // Use internal toggle method on tap
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        tileColor: Colors.white,
        leading: Icon(
          isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          widget.todo.todoText ?? '', // Ensure this is never null
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            decoration: isDone ? TextDecoration.lineThrough : null,
          ),
          textAlign: TextAlign.center,
        ),
        trailing: Container(
          height: 35,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: tdRed,
          ),
          child: IconButton(
            onPressed: _deleteTodo, // Call delete function on press
            icon: Icon(Icons.delete),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

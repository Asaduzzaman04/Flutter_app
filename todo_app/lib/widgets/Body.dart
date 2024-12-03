import 'package:flutter/material.dart';
import 'package:todo_app/Model/ToDo.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todo_item.dart';

class bodyWidget extends StatefulWidget {
  @override
  _TodoBodyState createState() => _TodoBodyState();
}

class _TodoBodyState extends State<bodyWidget> {
  final List<ToDo> todoList = ToDo.todoList();
  final TextEditingController _todoController = TextEditingController();

  void _addNewTask(String task) {
    if (task.isNotEmpty) {
      setState(() {
        todoList.add(ToDo(
          id: DateTime.now().toString(),
          todoText: task,
          isDone: false,
        ));
      });
      _todoController.clear();
    }
  }

  dynamic _toggleTodo(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteTodo(ToDo todo){
    setState(() {
      todoList.remove(todo); // Removes the todo item from the list
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            " Hasina's Todo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // Task List
        Expanded(
          child: ListView(
            children: todoList
                .map((todoData) => TodoItems(
              todo: todoData,
              onToggle: (toggleData) => _toggleTodo(todoData),
              onDelete: (deleteData) => _deleteTodo(deleteData),
            ))
                .toList(),
          ),
        ),
        // Add Task Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              // Input Field
              Expanded(
                child: TextField(
                  controller: _todoController,
                  decoration: InputDecoration(
                    hintText: 'Add a new task',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              // Add Button
              ElevatedButton(
                onPressed: () {
                  _addNewTask(_todoController.text);
                },
                child: Icon(Icons.add, size: 30, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  backgroundColor: tdBlue,
                  minimumSize: Size(60, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

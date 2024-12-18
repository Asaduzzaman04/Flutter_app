import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController titleText = TextEditingController();
  List Item = ["Item1"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: titleText,
          decoration: const InputDecoration(
            hintText: "Enter New Item"
          ),
        ),
        actions: [
          ElevatedButton(onPressed: (){
           if(titleText.text.isNotEmpty){
             setState(() {
              Item.add(titleText.text);
            });
           }
            titleText.clear();
          }, child: const Text("Add Item"))
        ],
      ),
      body: ListView.builder(
        itemCount: Item.length,
        itemBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.only(bottom: 2.0),
            child: ListTile(
              title: Text(Item[index],style: const TextStyle(color: Colors.white),),
              tileColor: const Color.fromARGB(255, 23, 3, 76),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      Item.removeAt(index);
                    });
                  }, icon: const Icon(Icons.delete,color: Colors.white,),),
                  IconButton(onPressed: (){
                    _editController(context,index);
                  }, icon: const Icon(Icons.edit,color: Colors.white,),)
                ],
              ),
            ),
          );
        }),
    );
  }
  void _editController(BuildContext context,index){
    TextEditingController editData = TextEditingController(text: Item[index]);
    showDialog(
      barrierDismissible: false,
    context: context, 
    builder:(context){
      return AlertDialog(
        title: const Text("Edit Item"),
        content: TextField(
          controller: editData,
          decoration:const InputDecoration(hintText: " Please Enter at Least one Item"),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Cancel")),
          ElevatedButton(onPressed: (){
           if(editData.text.isNotEmpty){
             setState(() {
              Item[index] = editData.text;
            });
           }
            Navigator.pop(context);
          }, child: const Text("Save"))
        ],
      );

    } 

    );
  }

}
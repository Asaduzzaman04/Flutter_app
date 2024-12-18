import 'package:flutter/material.dart';

class Screen02 extends StatelessWidget {
  final titleText;  
  const Screen02({super.key,  this.titleText,});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _appBar(),
      body:Column(
        children: [
          Text(titleText,style: const TextStyle(fontSize: 50.0),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Back to Screen01"))
        ],
      ),

    );
  }
}
class _appBar extends StatelessWidget implements PreferredSizeWidget {
  const _appBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_circle_left)),
      centerTitle: true,
      title: Text("hello world"),
      actions: [
        ElevatedButton(onPressed: () {}, child:  Icon(Icons.account_box_rounded))
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:todo_app/pages/screen2.dart';

class Screen1 extends StatelessWidget {
  final TextEditingController ItemText = TextEditingController();
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _appBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ItemText,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  hintText: "Enter a Text"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Screen02(
                          titleText: ItemText.text,
                        )));
              },
              child: const Text("Screen 02"))
        ],
      ),
    );
  }
}


class _appBar extends StatelessWidget implements PreferredSizeWidget {
  const _appBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_circle_left)),
      centerTitle: true,
      title: const Text("hello world"),
      actions: [
        ElevatedButton(onPressed: () {}, child:  const Icon(Icons.account_box_rounded))
      ],
    );
  }
}
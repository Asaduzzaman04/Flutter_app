import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 1.4,
    backgroundColor: tdBGColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // AppBar icon
        Icon(Icons.menu, color: tdBlack, size: 40),
        // User profile with rounded image
        Container(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(25), // Apply same radius to all corners
            child: Image.asset(
              "asstes/images/killerHasina.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}

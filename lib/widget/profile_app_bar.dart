import 'package:flutter/material.dart';

PreferredSizeWidget get profileAppBar {
  return AppBar(
    backgroundColor: Colors.grey.shade100,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
      ],
    ),
    centerTitle: true,
    title: Row(
      children: [
        Icon(Icons.location_on_outlined),
        Text(
          "Mohammadpur,Dhaka",
          style: TextStyle(fontSize: 12),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_down_rounded),
        ),
      ],
    ),
    actions: [
      Padding(
          padding: const EdgeInsets.only(right: 5),
          child:Padding(
            padding: const EdgeInsets.all(9.0),
            child: IconButton(onPressed: (){}, icon:CircleAvatar()),
          )
      )
    ],
    toolbarHeight: 70,
  );
}
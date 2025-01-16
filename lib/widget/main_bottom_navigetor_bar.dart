import 'package:flutter/material.dart';
import 'package:food_delivary/allPages/home_page.dart';
import 'package:food_delivary/allPages/search_result_page.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({
    super.key,
  });

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _currentId = 0;
  List<Widget> body = const [
    HomePage(),
    SearchResultPage(),
    SearchResultPage(),
    SearchResultPage(),
    SearchResultPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentId,
      onTap: (int idx){
        _currentId = idx;
        setState(() {

        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined,color: Colors.grey,),label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.messenger_outline_outlined,color: Colors.grey,),label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_rounded,color: Colors.grey,),label: " "),
      ],
    );
  }
}

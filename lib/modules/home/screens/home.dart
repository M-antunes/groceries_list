import 'package:groceries_list/modules/your_lists/screens/your_lists.dart';
import 'package:groceries_list/modules/page_2/page_2.dart';
import 'package:groceries_list/modules/page_3/page_3.dart';

import 'package:flutter/material.dart';
import 'package:groceries_list/shared/models/purchase_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  var primaryColor = Colors.teal;

  final List<Widget> _children = [
    const YourLists(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: primaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        unselectedLabelStyle: const TextStyle(color: Colors.blue),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.child_friendly_sharp),
            label: "Page 2",
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.settings),
            label: "Page 3",
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

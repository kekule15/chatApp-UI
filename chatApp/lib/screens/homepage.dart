import 'package:chatApp/screens/chatpage.dart';
import 'package:flutter/material.dart';

import 'models/tabNavItems.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label: ("Channels"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: ("Profile"),
          ),
        ],
      ),
    );
  }
}

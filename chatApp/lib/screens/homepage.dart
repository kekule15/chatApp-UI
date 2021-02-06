import 'package:chatApp/screens/channels.dart';
import 'package:chatApp/screens/chatpage.dart';
import 'package:chatApp/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              child: ChatPage(),
            ),
            Container(
              child: Channels(),
            ),
            Container(
              child: Profile(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text(
              'chat',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(Icons.chat_bubble),
            inactiveColor: Colors.deepPurple[300],
            activeColor: Colors.deepPurple[500],
          ),
          BottomNavyBarItem(
            title: Text('channel'),
            icon: Icon(Icons.apps),
            inactiveColor: Colors.deepPurple[300],
            activeColor: Colors.deepPurple[500],
          ),
          BottomNavyBarItem(
            title: Text('profile'),
            icon: Icon(Icons.person),
            inactiveColor: Colors.deepPurple[300],
            activeColor: Colors.deepPurple[500],
          ),
        ],
      ),
    );
  }
}

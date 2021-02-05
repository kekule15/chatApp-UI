import 'package:chatApp/screens/channels.dart';
import 'package:chatApp/screens/chatpage.dart';
import 'package:chatApp/screens/profile.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  TabNavigationItem(
    this.page,
    this.title,
    this.icon,
  );

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          ChatPage(),
          ("Chats"),
          Icon(Icons.message),
        ),
        TabNavigationItem(
          Channels(),
          ("Channels"),
          Icon(Icons.group_work),
        ),
        TabNavigationItem(
          Profile(),
          ("Profile"),
          Icon(Icons.account_box),
        ),
      ];
}

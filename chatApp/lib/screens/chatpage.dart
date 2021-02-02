import 'package:flutter/material.dart';
import 'models/chatUsersModel.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers("Jane Russel", "Awesome Setup", "assets/rad3.jpg", "Now"),
    ChatUsers(
      "Glady's Murphy",
      "That's Great",
      "assets/rad10.jpg",
      "Yesterday",
    ),
    ChatUsers("Jorge Henry", "Hey where are you?", "assets/rad4.jpg", "31 Mar"),
    ChatUsers(
        "Philip Fox", "Busy! Call me in 20 mins", "assets/rad5.jpg", "28 Mar"),
    ChatUsers(
        "Debra Hawkins", "Thankyou, It's awesome", "assets/rad6.jpg", "23 Mar"),
    ChatUsers("Jacob Pena", "will update you in evening", "assets/rad7.jpg",
        "17 Mar"),
    ChatUsers("Andrey Jones", "Can you please share the file?",
        "assets/rad8.jpg", "24 Feb"),
    ChatUsers("John Wick", "How are you?", "assets/rad9.jpg", "18 Feb")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Conversations",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurple.shade50,
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.purple,
                              size: 20,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Add New",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      maxRadius: 30,
                      // backgroundColor: Colors.red,
                      backgroundImage:
                          AssetImage("${chatUsers[index].imageUrl}"),
                    ),
                    title: Text("${chatUsers[index].name}"),
                    subtitle: Text("${chatUsers[index].messageText}"),
                    trailing: Text("${chatUsers[index].time}"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

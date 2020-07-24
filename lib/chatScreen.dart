import 'package:dummy/models/ChatList.dart';
import 'package:flutter/material.dart';

class chatScreen extends StatelessWidget {
  final ChatListItem person;
  chatScreen({this.person});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.userName),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}

import 'package:dummy/tabs/calls.dart';
import 'package:dummy/tabs/camera.dart';
import 'package:dummy/tabs/chat.dart';
import 'package:dummy/tabs/status.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xFF075E54),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF075E54),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "WhtasApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          backgroundColor: Color(0xFF075E54),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.camera_enhance),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            camera(),
            chat(),
            status(),
            calls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),
          onPressed: (){},
          backgroundColor: Color(0xFF075E54),
        ),
      ),
    );
  }
}


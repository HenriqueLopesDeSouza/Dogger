import 'package:flutter/material.dart';
import 'chat.dart';

class HomePageChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text("James"),
          leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/jaimes.jpeg"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        ),
        body: new ChatScreen());
  }
}

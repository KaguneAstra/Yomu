import 'package:flutter/material.dart';

class PostView extends StatefulWidget {
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("This is the post view"),
        alignment: Alignment.center,
        color: Colors.green,
      ),
    );
  }
}

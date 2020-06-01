import 'package:flutter/material.dart';

class SubredditContainer extends StatelessWidget {
  //will be replaced with actual reddit api options
  String _text;
  String _path;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 150,
        width: 700,
        child: Image.asset(
          _path,
          fit: BoxFit.fitWidth,
        ),
      ),
      Container(
        color: Color.fromARGB(255, 103, 117, 126),
        height: 50,
        width: 700,
        child: Text(
          _text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    ]);
  }

  SubredditContainer(String input, String path) {
    _text = input;
    _path = path;
  }
}

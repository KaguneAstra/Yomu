import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  String _text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      padding: EdgeInsets.all(5),
      width: 700,
      child: Text(
        _text,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  TextContainer(String input) {
    _text = input;
  }
}

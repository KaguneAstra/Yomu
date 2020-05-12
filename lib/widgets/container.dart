import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  double _height;
  double _width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      child: Text("Post title"),
      color: Colors.grey,
    );
  }

  PostContainer(double width, double height) {
    this._height = height;
    this._width = width;
  }
}

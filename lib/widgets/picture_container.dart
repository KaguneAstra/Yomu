import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  AssetImage _picture;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Image(image: _picture),
    );
  }

  //this constructor will temprarily take a file path
  PictureContainer(String filePath) {
    _picture = AssetImage(filePath);
  }
}

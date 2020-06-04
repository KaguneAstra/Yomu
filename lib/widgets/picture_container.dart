import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  AssetImage _picture;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tempScreen()),
        );
      },
      child: Image(image: _picture),
    );
  }

  //this constructor will temprarily take a file path
  PictureContainer(String filePath) {
    _picture = AssetImage(filePath);
  }
}

//Possible picture zoom in thing for the temporary screen
//https://pub.dev/packages/photo_view#-readme-tab-

class tempScreen extends StatelessWidget {
  @override
  String text;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$text"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }

  tempScreen([this.text = "Default Text"]);
}

import 'package:flutter/material.dart';

class UnderConstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/teehee.jpg"),
            ),
          ),
        ),
        Container(height: 10),
        Text("Oops, this area is still under construction"),
      ],
    );
  }
}

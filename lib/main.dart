import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/main_screen/main_screen.dart';
import 'package:yomu_for_reddit/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yomu for Reddit',
      theme: ThemeData(
        // The text theme data should automatically be applied to most text
        // Make new text themes in style.dart
        // How to use the text theme (manually):
        // Text("This uses the theme!", style: Theme.of(context).textTheme.bodyText2),
        // Text("This uses the theme!", style: Theme.of(context).textTheme.headline6),
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextTheme),
        ),
        textTheme: TextTheme(
          headline6: TitleTextTheme,
          bodyText2: BodyTextTheme,
        ),
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

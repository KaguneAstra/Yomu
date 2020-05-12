import 'package:flutter/material.dart';

class SubredditView extends StatefulWidget {
  @override
  _SubredditViewState createState() => _SubredditViewState();
}

class _SubredditViewState extends State<SubredditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Prob change this to a sliver header at some point
      appBar: AppBar(
        title: Text("r/subreddit"),
      ),
      body: Container(
        child: Text("This is the subreddit view"),
        alignment: Alignment.center,
        color: Colors.grey,
      ),
    );
  }
}

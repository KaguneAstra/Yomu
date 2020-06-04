import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/widgets/post_container.dart';

List<String> posts = <String>["Post 1", "Post 2", "Post 3"];
int counter = 1;

class SubredditView extends StatefulWidget {
  @override
  _SubredditViewState createState() => _SubredditViewState();
}

class _SubredditViewState extends State<SubredditView> {
  void addPostToList() {
    setState(() {
      counter++;
      if (counter > 2) {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Prob change this to a sliver header at some point
      appBar: AppBar(
        title: Text("r/subreddit"),
      ),
      body: Column(
        children: <Widget>[
          PostContainer(0),
          /*ListView.builder(
              addAutomaticKeepAlives: true,
              padding: const EdgeInsets.all(8),
              itemCount: counter,
              itemBuilder: (BuildContext context, int index) {
                return PostContainer(counter % 4);
              },
            ),*/
        ],
      ),
      //This is just test code
      floatingActionButton: FloatingActionButton(
        onPressed: addPostToList,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

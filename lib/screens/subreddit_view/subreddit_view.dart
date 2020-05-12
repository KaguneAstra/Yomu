import 'package:flutter/material.dart';
//import 'package:yomu_for_reddit/widgets/container.dart';

List<String> posts = <String>["Post 1", "Post 2", "Post 3"];

class SubredditView extends StatefulWidget {
  @override
  _SubredditViewState createState() => _SubredditViewState();
}

class _SubredditViewState extends State<SubredditView> {
  void addPostToList() {
    setState(() {
      posts.insert(posts.length, "A new post has arrived");
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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  margin: EdgeInsets.all(2),
                  child: Center(
                    child: Text('${posts[index]}'),
                  ),
                );
              },
            ),
          ),
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

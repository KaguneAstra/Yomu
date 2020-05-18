import 'package:flutter/material.dart';

int _score;

class PostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top row for Post(title, subreddit, options)
        Row(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Post title',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    'r/idk',
                  ),
                ),
              ],
            ),
            Container(
              child: Text('Button'),
            ),
          ],
        ),
        //image or post text container
        Container(
          child: Text('ahahahahah why are you looking here'),
        ),
        //upvote/downvote row
        Row(
          children: [
            Container(
              child: Text('Score: $_score'),
            ),
          ],
        ),
      ],
    );
  }

  /*
    This post container will contain 2 rows and
    a picture/text container in the middle
    the first row will contain a column and 1 button on the right side
    
    The container will either have a picture or text
    
    The last row will contain upvote/downvote and other buttons
  */
  PostContainer(int score) {
    _score = score;
  }
}

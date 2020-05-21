import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/widgets/text_container.dart';

int _score;
Widget _postContent;

class PostContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Top row for Post(title, subreddit, options)
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Post title",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "r/idk",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text('Button'),
            ),
          ],
        ),
        //image or post text container
        _postContent,
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
      TO DO: 
      Abstract the middle container to be able to take any container
      Create local private variable to contain the middle container
      Create local private function to return said container
      Create picture container
      Move text container to another class
      Create cross post container
  */

  PostContainer(int score) {
    _score = score;
    _postContent = TextContainer();
  }
}

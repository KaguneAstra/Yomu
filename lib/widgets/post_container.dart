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
        Container(
          width: 700,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            textAlign: TextAlign.left,
            overflow: TextOverflow.fade,
            maxLines: 3,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
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

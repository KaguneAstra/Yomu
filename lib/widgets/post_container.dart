import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/widgets/text_container.dart';
import 'package:yomu_for_reddit/widgets/picture_container.dart';
import 'package:yomu_for_reddit/widgets/subreddit_container.dart';

class PostContainer extends StatelessWidget {
  int _score;
  Widget _postContent;

  double iconSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.0),
      //background Colour
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Top row for Post(title, subreddit, options)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //column for Post title and subreddit
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5),
                    child: RichText(
                      text: TextSpan(
                        text: "r/idk",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 11,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " · 9h · u/pancakereaper",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      width: 345,
                      child: Text(
                        "You won't believe what happened here aaaa aaaa aaaa aaa aaa aaaaaaa aaaaaa aaa aaaaaa aaaaaa",
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /* Container(
                padding: EdgeInsets.only(left: 5.0),
                //details list. Could add time and user
                child: RichText(
                  text: TextSpan(
                    text: "r/idk",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: " · 9h · u/pancakereaper",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),*/
              Spacer(),
              PostContainerDropdownMenu(),
            ],
          ),
          //Post title
          /*Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "You won't believe what happened here",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),*/
          //image or post text container
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: _postContent,
          ),
          //upvote/downvote row
          Row(
            children: [
              Container(
                height: 30,
                width: 135,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: InkWell(
                  onTap: () {
                    print("go to comment section lul");
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 4,
                      ),
                      Icon(
                        Icons.mode_comment,
                        size: iconSize,
                      ),
                      Container(
                        width: 5,
                      ),
                      Text("$_score comments"),
                    ],
                  ),
                ),
              ),
              Spacer(),
              IconButton(
                  visualDensity: VisualDensity(vertical: -4),
                  highlightColor: Colors.orange,
                  icon: Icon(
                    Icons.arrow_upward,
                    size: iconSize,
                  ),
                  onPressed: () {
                    //do something
                  }),
              Container(
                child: Text(' $_score '),
              ),
              IconButton(
                  visualDensity: VisualDensity(vertical: -4),
                  highlightColor: Colors.blue,
                  icon: Icon(
                    Icons.arrow_downward,
                    size: iconSize,
                  ),
                  onPressed: () {
                    //do something
                  }),
            ],
          ),
        ],
      ),
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
    switch (score) {
      case 0:
        {
          _postContent = TextContainer(
              "lorem ipsum something something something. I'm too lazy to find the real copy pasta so this will have to do. Some longer text long loooooooooooooong maaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaan");
        }
        break;
      case 1:
        {
          _postContent = PictureContainer('assets/pictures/1.jpg');
        }
        break;
      case 2:
        {
          _postContent = PictureContainer('assets/pictures/2.jpg');
        }
        break;
      case 3:
        {
          _postContent = PictureContainer('assets/pictures/3.jpg');
        }
        break;
      case 4:
        {
          _postContent =
              SubredditContainer("r/animuTiddies", 'assets/pictures/1.png');
        }
    }
  }
}

class TempScreen extends StatelessWidget {
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

  TempScreen([this.text = "Default Text"]);
}

class PostContainerDropdownMenu extends StatefulWidget {
  PostContainerDropdownMenu({Key key}) : super(key: key);

  @override
  _PostContainerDropdownMenu createState() => _PostContainerDropdownMenu();
}

class _PostContainerDropdownMenu extends State<PostContainerDropdownMenu> {
  String _selected;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isDense: true,
        hint: Container(),
        icon: Icon(Icons.more_vert, color: Colors.black),
        iconSize: 22,
        elevation: 16,
        onChanged: (String newValue) {
          setState(() {
            _selected = newValue;
            switch (_selected) {
              case "One":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TempScreen("1")),
                );
                break;
              case "Two":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TempScreen("2")),
                );
                break;
              case "Free":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TempScreen()),
                );
                break;
              case "Four":
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TempScreen("hahaha")),
                );
                break;
            }
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

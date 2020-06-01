import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/widgets/under_construction.dart';

class AccountInfoView extends StatefulWidget {
  @override
  _AccountInfoViewState createState() => _AccountInfoViewState();
}

class _AccountInfoViewState extends State<AccountInfoView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: Scaffold(
        appBar: AppBar(
          title: Text("u/moonlight_spliter"),
          // TODO - Setup color to a global theme
          //backgroundColor: Colors.orange,  // might be able to use default colortheme
          // TODO - Make this thing horizontally scrollable
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Text("Overview"),
              Text("About"),
              Text("Posts"),
              Text("Comments"),
              Text("Saved"),
              Text("Hidden"),
              Text("Upvoted"),
              Text("Downvoted"),
              Text("Gilded"),
              Text("Friends"),
              Text("Blocks"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            UnderConstruction(),
            //Text("Overview"),
            //Text("About"), // custom view
            //Text("Posts"), // put kevin's infinitescroller here
            //Text("Comments"), // custom scroller widget
            //Text("Saved"), // put kevin's infinitescroller here
            //Text("Hidden"), // put kevin's infinitescroller here
            //Text("Upvoted"), // put kevin's infinitescroller here
            //Text("Downvoted"), // put kevin's infinitescroller here
            //Text("Gilded"), // put kevin's infinitescroller here
            //Text("Friends"),
            //Text("Blocks"),
          ],
        ),
      ),
    );
  }
}

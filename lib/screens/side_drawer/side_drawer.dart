import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/side_drawer/account_drawer_header.dart';

import 'account_info_view/account_info_view.dart';

class SideDrawer extends StatelessWidget {
  // This is to be replaced at some later date
  final List<String> testArray = [
    "r/MechanicalKeyboardsMechanicalKeyboards",
    "Second",
    "Third",
    "First",
    "Second",
    "Third",
    "First",
    "Second",
    "Third"
  ];

  List<ListTile> _makeSubredditList(BuildContext context) {
    List<ListTile> subredditList = [];
    for (String str in testArray) {
      subredditList.add(
        ListTile(
          title: Text(
            str,
            softWrap: false,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.fade,
          ),
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey,
          ),
          dense: true,
          onTap: () {
            print(str);
          },
        ),
      );
    }
    return subredditList;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AccountDrawerHeader(
            Text("u/moonlight_spliter", style: TextStyle(fontSize: 18)),
            Text("Karma: 1337"),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                ListTile(
                  title: Text("Home",
                      style: Theme.of(context).textTheme.bodyText2),
                  leading: Icon(Icons.home),
                  dense: true,
                  onTap: () {
                    // Programmatically close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Inbox",
                      style: Theme.of(context).textTheme.bodyText2),
                  leading: Icon(Icons.mail),
                  dense: true,
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Saved",
                      style: Theme.of(context).textTheme.bodyText2),
                  leading: Icon(Icons.star),
                  dense: true,
                  onTap: () {},
                ),
                Divider(thickness: 2.0),
                ..._makeSubredditList(context),
              ],
            ),
          ),
          Divider(thickness: 2.0),
          ListTile(
            title:
                Text("Settings", style: Theme.of(context).textTheme.bodyText2),
            leading: Icon(Icons.settings),
            dense: true,
          ),
        ],
      ),
    );
  }
}

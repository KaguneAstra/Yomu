import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/side_drawer/account_drawer_header.dart';

import 'account_info_view/account_info_view.dart';

class SideDrawer extends StatelessWidget {
  List<String> testArray = [
    "First",
    "Second",
    "Third",
    "First",
    "Second",
    "Third",
    "First",
    "Second",
    "Third"
  ];

  List<ListTile> _makeSubredditList() {
    List<ListTile> subredditList = [];
    for (String str in testArray) {
      subredditList.add(
        ListTile(
          title: Text(str),
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
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  dense: true,
                  onTap: () {
                    // Programmatically close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Inbox"),
                  leading: Icon(Icons.mail),
                  dense: true,
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Saved"),
                  leading: Icon(Icons.star),
                  dense: true,
                  onTap: () {},
                ),
                Divider(thickness: 2.0),
                ..._makeSubredditList(),
              ],
            ),
          ),
          Divider(thickness: 2.0),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
            dense: true,
          ),
        ],
      ),
    );
  }
}

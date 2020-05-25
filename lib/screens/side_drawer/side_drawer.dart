import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/side_drawer/account_drawer_footer.dart';
import 'package:yomu_for_reddit/screens/side_drawer/account_drawer_header.dart';
import 'package:yomu_for_reddit/screens/side_drawer/account_inbox_view/account_inbox_view.dart';
import 'package:yomu_for_reddit/screens/side_drawer/saved_post_view/saved_post_view.dart';

import 'account_info_view/account_info_view.dart';

class SideDrawer extends StatelessWidget {
  // These are to be replaced at some later date
  final List<String> favArray = [
    "r/MechanicalKeyboards",
    "r/unixporn",
    "r/anime_irl",
    "r/programmerhumor",
  ];
  final List<String> testArray = [
    "Second",
    "Third",
    "First",
    "Second",
    "Third",
    "First",
    "Second",
    "Third"
  ];

  /// Make a custom ListTile for a subreddit, tap to go to a corresponding SubredditView
  List<ListTile> _makeSubredditList(BuildContext context, List<String> arr) {
    List<ListTile> subredditList = [];
    for (String str in arr) {
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
          // TODO - Hookup to go to a SubredditView of the corresponding subreddit
          onTap: () {
            print(str);
          },
        ),
      );
    }
    return subredditList;
  }

  /// Makes a custom Listile that goes to a specified page.
  ListTile _makeCustomListTile(BuildContext context, String title, Icon icon,
      Widget Function() gotoPage) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.bodyText2),
      leading: icon,
      dense: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gotoPage()),
        );
      },
    );
  }

  /// Slightly faded subtitle text, to be placed in the ListView
  Widget _makeSubTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(text, style: TextStyle(color: Colors.black45)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Change this to go well with the reddit API
          AccountDrawerHeader(
            Text("u/moonlight_spliter", style: TextStyle(fontSize: 18)),
            Text("Karma: 1337"),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
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
                _makeCustomListTile(context, "Profile", Icon(Icons.person),
                    () => AccountInfoView()),
                _makeCustomListTile(context, "Inbox", Icon(Icons.mail),
                    () => AccountInboxView()),
                _makeCustomListTile(
                    context, "Saved", Icon(Icons.star), () => SavedPostView()),
                Divider(thickness: 2.0),
                _makeSubTitle("Favourites"),
                ..._makeSubredditList(context, favArray),
                Divider(thickness: 2.0),
                _makeSubTitle("All subreddits"),
                ..._makeSubredditList(context, testArray),
              ],
            ),
          ),
          AccountDrawerFooter(),
        ],
      ),
    );
  }
}

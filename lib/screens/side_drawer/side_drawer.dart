import 'package:flutter/material.dart';

import 'account_info_view/account_info_view.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("Karma: 1337"),
            accountName: Text("moonlight_splitter"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("First page"),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_drop_down),
            onTap: () {
              // Programmatically close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Account Info"),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountInfoView()),
              );
            },
          ),
          Divider(thickness: 2.0),
          ListTile(
            title: Text("Second page"),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }
}

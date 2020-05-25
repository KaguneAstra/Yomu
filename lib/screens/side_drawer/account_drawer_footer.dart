import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/side_drawer/settings_view/settings_view.dart';

class AccountDrawerFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.orange,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            color: Colors.black38,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Material(
              // TODO - Change color of footer here to match theme
              color: Colors.orange,
              child: InkWell(
                // Splash color of InkWell (Should match the color of parent Material widget)
                splashColor: Colors.orange[800],
                highlightColor: Colors.orange[400],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsView()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.settings),
                      Container(width: 10),
                      Text('Settings'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Toggle nsfw");
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                height: 30,
                width: 30,
                // TODO - Decoration & toggle logic needs to be implemented
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

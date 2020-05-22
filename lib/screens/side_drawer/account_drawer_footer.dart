import 'package:flutter/material.dart';
import 'package:yomu_for_reddit/screens/side_drawer/settings_view/settings_view.dart';

class AccountDrawerFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      //padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            //offset: Offset(0, 1),
            color: Colors.black38,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          // TODO - Add some flair to these InkWells;
          Expanded(
            child: Material(
              color: Colors.orange,
              child: InkWell(
                splashColor: Colors.orange[800],
                highlightColor: Colors.orange[700],
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

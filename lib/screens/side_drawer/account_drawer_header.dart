import 'package:flutter/material.dart';

class AccountDrawerHeader extends StatelessWidget {
  final Widget accountName;
  final Widget accountKarma;

  AccountDrawerHeader(this.accountName, this.accountKarma);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            color: Colors.black38,
          )
        ],
      ),
      child: Material(
        // TODO - Change color of header here to match theme
        color: Colors.orange,
        child: InkWell(
          // Splash color of InkWell (Should match the color of parent Material widget)
          splashColor: Colors.orange[800],
          highlightColor: Colors.orange[400],
          onTap: () {
            print('test');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
                  // TODO - Show account profile picture here
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      accountName,
                      accountKarma,
                    ],
                  ),
                ),
                Spacer(),
                Icon(Icons.settings),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

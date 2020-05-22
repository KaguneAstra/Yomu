import 'package:flutter/material.dart';

class AccountDrawerHeader extends StatelessWidget {
  final Widget accountName;
  final Widget accountKarma;

  AccountDrawerHeader(this.accountName, this.accountKarma);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.orange,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 10,
            //offset: Offset(0, 1),
            color: Colors.black38,
          )
        ],
      ),
      child: Material(
        color: Colors.orange,
        child: InkWell(
          splashColor: Colors.orange[800],
          highlightColor: Colors.orange[700],
          onTap: () {
            print('test');
          },
          child: Container(
            height: 120,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleAvatar(
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

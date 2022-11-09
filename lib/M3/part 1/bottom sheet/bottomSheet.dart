import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BOTTOM SHEET ",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: new Icon(Icons.more),
                            title: new Text('More'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.favorite,color: Colors.pink),
                            title: new Text('Favorite'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: new Icon(Icons.account_box,color: Colors.blue),
                            title: new Text('Profile'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            leading: new Icon(Icons.logout),
                            title: new Text('Log out'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              child: Text(
                'bottom Sheet',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
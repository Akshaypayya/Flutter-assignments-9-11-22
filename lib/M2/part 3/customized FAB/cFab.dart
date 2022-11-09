import 'package:flutter/material.dart';

class Cfab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Cfab> {
  bool clickedCentreFAB = false;
  int selectedIndex = 0;
  String text = "Home";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset.bottomCenter,

          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.home,
                  color: selectedIndex == 0
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.call_made,
                  color: selectedIndex == 1
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.call_received,
                  color: selectedIndex == 2
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {},
                iconSize: 27.0,
                icon: Icon(
                  Icons.settings,
                  color: selectedIndex == 3
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }
}
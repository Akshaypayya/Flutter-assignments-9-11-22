import 'package:flutter/material.dart';
class Fab2 extends StatefulWidget {
  const Fab2({Key? key}) : super(key: key);

  @override
  State<Fab2> createState() => _Fab2State();
}

class _Fab2State extends State<Fab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
        actions: [
          Icon(Icons.more_vert_sharp),
          Icon(Icons.add)
        ],
      ),
      floatingActionButton: Wrap( //will break to another line on overflow
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              alignment: Alignment.bottomLeft,
              margin:EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (){

                },
                backgroundColor: Colors.teal,
                child: Icon(Icons.add),
              )
          ),  //button first
          Container(
              alignment: Alignment.bottomRight,
              margin:EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (){

                },
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.add),
              )
          ), // button second
        ],
      ),
      body:  Container(
    child: Center(
    child: Text("Multiple Floating Buttons"),
    ),
    ),
    );
  }
}

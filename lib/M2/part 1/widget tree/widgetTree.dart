import 'package:flutter/material.dart';
class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.accessibility_new_sharp),
              Container(
                color: Colors.teal,
                child: Text("this is a text inside a container"),
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.account_circle_rounded),
              Container(
                color: Colors.teal,
                child: Text("this is a text inside a container"),
              )
            ],
          ),
          Column(
            children: [
              Icon(Icons.abc_outlined),
              Container(
                color: Colors.teal,
                child: Text("this is a text inside a container"),
              )
            ],
          )
        ],
      ),
    );

  }
}

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('I\'m an App'),
    backgroundColor: Colors.red[600],
    ),
    backgroundColor: Colors.red,
    body:Container(
      color: Colors.blue,
      margin:const EdgeInsets.only(top: 20, right: 50),
      child: Container(
        color: Colors.green,
        margin: const EdgeInsets.symmetric(vertical: 200),
        child: Container(
          color: Colors.yellow,
          margin: const EdgeInsets.fromLTRB(0, 20, 200, 20),
        ),
      ),
    ),
    );
  }
}
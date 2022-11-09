import 'package:flutter/material.dart';

class Mywidget extends StatefulWidget {
  const Mywidget({Key? key}) : super(key: key);

  @override
  State<Mywidget> createState() => _MywidgetState();
}

class _MywidgetState extends State<Mywidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Widget Tree'),
      ),
      body:Container(
        child:Column(
          children: [
            Row(
              children: [
                Text('Row1'),
                Text('Row2'),
              ],
            ),
            Text('Text content here'),
          ],
        )
      )
    );
  }
}

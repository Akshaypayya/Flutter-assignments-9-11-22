import 'package:flutter/material.dart';
class ContainerEx extends StatefulWidget {
  const ContainerEx({Key? key}) : super(key: key);

  @override
  State<ContainerEx> createState() => _ContainerExState();
}

class _ContainerExState extends State<ContainerEx> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.teal[600],
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(0.1),
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white)),
    );
  }
}

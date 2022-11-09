import 'package:flutter/material.dart';
class AlertBox1 extends StatefulWidget {
  const AlertBox1({Key? key}) : super(key: key);

  @override
  State<AlertBox1> createState() => _AlertBox1State();
}

class _AlertBox1State extends State<AlertBox1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: ()  async {
                final ConfirmAction action = (await _asyncConfirmDialog(context)) as ConfirmAction;
            },
            child: Text("Show Alert Box")
        ),
      ),
    );
  }
}
enum ConfirmAction { cancel, accept}
Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Reset settings?'),
        content: const Text(
            'This will reset your device to its default factory '),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.cancel);
            },
          ),
          ElevatedButton(
            child: const Text('Accept'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.accept);
            },
          )
        ],
      );
    },
  );
}


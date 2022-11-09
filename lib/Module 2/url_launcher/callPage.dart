import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final _formKey = GlobalKey<FormState>();
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Column(
            children: [
              TextFormField(
                onChanged: (String text)=>_phone=text,
                decoration: const InputDecoration(
                    labelText: "Enter your No."
                ),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton.icon(
                onPressed: () => setState(() {
                  launch('tel:$_phone');
                }),
                icon:const Icon(Icons.call),
                label: const Text('sent'),
              ),
            ],
          ),
        ],
          ),
      );
  }
}

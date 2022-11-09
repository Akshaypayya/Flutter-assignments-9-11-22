import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SmsPage extends StatefulWidget {
  const SmsPage({Key? key}) : super(key: key);

  @override
  State<SmsPage> createState() => _SmsPageState();
}

class _SmsPageState extends State<SmsPage> {
  final _formKey = GlobalKey<FormState>();
  String _phone='';
  String _message='';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Column(
            children: [
              TextFormField(
                onChanged: (String text)=> _phone=text,
                decoration: InputDecoration(labelText: "Enter your No."),
              ),
              SizedBox(height: 30),
              TextFormField(
                onChanged: (String text)=> _phone=text,
                decoration: InputDecoration(labelText: "Enter your No."),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  launch('sms+$_phone?body=$_message');
                },
                icon:Icon(Icons.sms_outlined),
                label: Text('sent'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

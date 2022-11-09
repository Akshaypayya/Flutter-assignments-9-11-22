import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);
  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final _formKey = GlobalKey<FormState>();
  String _sender='';
  String _subject='';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Column(
            children: [
              TextFormField(
                onChanged: (String text)=> _sender=text,
                decoration: InputDecoration(labelText: "Mail id"),
              ),
              TextFormField(
                onChanged: (String text)=> _subject=text,
                decoration: InputDecoration(labelText: "To"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Subject"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Compose Mail"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  launch('mailto:$_sender?subject=$_subject');
                },
                icon:Icon(Icons.mail),
                 label: Text('send'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

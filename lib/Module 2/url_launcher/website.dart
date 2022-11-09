import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);
  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  final _formKey = GlobalKey<FormState>();
  String _link='';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Column(
            children: [
              TextFormField(
                onChanged: (String text)=>_link=text,
                decoration: InputDecoration(
                    labelText: "Enter url"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  launch('$_link');
                  },
                icon:Icon(Icons.sms_outlined),
                label: Text('go'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


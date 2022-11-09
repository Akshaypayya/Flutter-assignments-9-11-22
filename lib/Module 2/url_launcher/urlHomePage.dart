import 'package:flutter/material.dart';

class UrlHomePage extends StatefulWidget {
  const UrlHomePage({Key? key}) : super(key: key);

  @override
  State<UrlHomePage> createState() => UrlHomePageState();
}

class UrlHomePageState extends State<UrlHomePage> {
  var selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Url page'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(() {
                selectedItem = value.toString();
              });
              Navigator.pushNamed(context, value.toString());
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    Text(" call"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                    Text(" mail"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.black,
                    ),
                    Text(" website"),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.sms,
                      color: Colors.black,
                    ),
                    Text(" sms"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_assignment/Module 3/login-shared%20preference/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySPHomePage extends StatefulWidget {
  @override
  _MySPHomePageState createState() => _MySPHomePageState();
}
class _MySPHomePageState extends State<MySPHomePage> {
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Welcome  $username',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
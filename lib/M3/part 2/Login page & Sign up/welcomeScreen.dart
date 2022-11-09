import 'package:flutter/material.dart';
import 'package:flutter_assignment/M3/part%202/Login%20page%20&%20Sign%20up/login.dart';
import 'package:flutter_assignment/M3/part%202/Login%20page%20&%20Sign%20up/signupScreen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 1.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Divider(
              height: 100,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset("assets/images/flutterlogo.png"),
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  child: Text("login"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  }),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  child:Text("signup"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
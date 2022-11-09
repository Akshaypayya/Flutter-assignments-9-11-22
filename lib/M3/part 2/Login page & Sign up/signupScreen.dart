import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;

  @override
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              height: 50,
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Image.asset("assets/images/flutterlogo.png"),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 21.0),
              height: MediaQuery.of(context).size.height / 1.67,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign-up",
              style:TextStyle(
                fontSize:30,
                    color: Theme.of(context).primaryColor,
                  ),
                  ),
                  Text("Name",
                    style:TextStyle(
                      fontSize: 22,
                    color: const Color(0xffdddee3),
                  ),
                  ),
                  // ),
                  // InputTxtField(
                  //   hintText: "Your Name",
                  //   controller: nameController,
                  //   validator: nameValidator,
                  //   obscureText: false,
                  // ),
                  Text("Email",
                  style:TextStyle(
                    fontSize: 22,
                    color: const Color(0xffdddee3),
                  ),
                  ),
                  // ),
                  // InputTxtField(
                  //   hintText: "Your Email id",
                  //   controller: emailController,
                  //   validator: emailValidator,
                  //   obscureText: false,
                  // ),
                  Text("Password",
                    style:TextStyle(
                      fontSize: 22,
                    color: const Color(0xffdddee3),
                  ),
                  ),

                  // InputTxtField(
                  //   hintText: "Password",
                  //   controller: passwordController,
                  //   validator: passwordValidator,
                  //   obscureText: true,
                  // ),

                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child:Text("Signup"),
                      onPressed: () {},
                    ),
                  ),
        ],),
            ),
    ],),
    ),
    );
  }
}
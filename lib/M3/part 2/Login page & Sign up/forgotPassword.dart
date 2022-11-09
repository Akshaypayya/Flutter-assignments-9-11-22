import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = TextEditingController();

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
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot password",
                    style:TextStyle(
                    fontSize:30,
                    color: Theme.of(context).primaryColor,
                  ),
),
                  Text("Email",
                  style:TextStyle(
                  fontSize: 22,
                    color: const Color(0xffdddee3),
                  ),
                  // InputTxtField(
                  //   hintText: "Your Email id",
                  //   controller: emailController,
                  //   validator: emailValidator,
                  //   obscureText: false,
                  ),
                  SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child:Text("Submit"),
                      onPressed: (){},
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back to login",
                      style:TextStyle(
                      fontSize: 18,
                        color: const Color(0xff999a9e),
                      ),
                    ),
                  ),
),],
              ),
            )
          ],
        ),
      ),
    );
  }
}
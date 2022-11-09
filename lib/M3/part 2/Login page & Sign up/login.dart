import 'package:flutter/material.dart';
import 'package:flutter_assignment/M3/part%202/Login%20page%20&%20Sign%20up/forgotPassword.dart';
import 'package:flutter_assignment/M3/part%202/Login%20page%20&%20Sign%20up/signupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                child: Image.asset("assets/image.png"),
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
                  Text("Log-in",
                    style:TextStyle(
                      fontSize: 30,
                    color: Theme.of(context).primaryColor,
                  ),
              ),
                  Text("Email",
                  style:TextStyle(
                    fontSize: 22,
                    // color: const Color(0xffdddee3),
                    // hintText: "Your Email id",
                    // controller: emailController,
                    // validator: emailValidator,
                    // obscureText: false,
                  ),
                  ),
                  Text("Password",
                  style:TextStyle(
                  fontSize:22,
                    color: const Color(0xffdddee3),
                  ),
                  ),
                  // ),
                  // InputTxtField(
                  //   hintText: "Password",
                  //   controller: passwordController,
                  //   validator: passwordValidator,
                  //   obscureText: true,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                              const ForgetPasswordScreen()),
                            ),
                          );
                        },
                        child: Text("Forget password?",
                          style:TextStyle(
                          fontSize: 18,
                          color: const Color(0xff999a9e),
                        ),
                      )
                      ),],
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child:Text("Login"),
                      onPressed: (){},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style:TextStyle(
                          fontSize: 18,
                        color: const Color(0xff999a9e),
                      ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => SignUpScreen()),
                            ),
                          );
                        },
                        child: Text("Sign-Up ",
                          style:TextStyle(
                            fontSize: 18,
                          color: const Color(0xff999a9e),
                        ),
                      ),
                      ),],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
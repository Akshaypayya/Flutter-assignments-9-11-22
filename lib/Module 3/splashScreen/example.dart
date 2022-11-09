import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(
            seconds: 8,
            navigateAfterSeconds:const MyHomePage(),
            title: const Text(
              'SplashScreen Example',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
            image: Image.asset('assets/images/flutterlogo.png'),
            photoSize: 100.0,
            backgroundColor: Colors.blue,
            styleTextUnderTheLoader: const TextStyle(),
            loaderColor: Colors.white
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hi, mate"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_assignment/Module%203/alarmclock/alarm.dart';
import 'package:flutter_assignment/Module%203/login-shared%20preference/homePage.dart';
import 'package:flutter_assignment/Module%203/splashScreen/example.dart';
import 'package:flutter_assignment/Module%203/textTospeech/textTospeech.dart';

class Module3 extends StatefulWidget {
  const Module3({Key? key}) : super(key: key);

  @override
  State<Module3> createState() => _Module3State();
}

class _Module3State extends State<Module3> {
  @override
  var size,height,width;

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Assignment"),
      ),
      body: Center(
        child: ListView(children: [
          SizedBox(height: 140),

          Center(
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  'Alarm clock',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Alarm()));

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          Center(
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  'Shared preference',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySPHomePage()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height:20),
          Center(
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  'Splash screen',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MySplashScreen()));

                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          Center(
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  'Text to speech',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TexttoSpeech()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height:20),
          Center(
            child: SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  'Weather',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => weather()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}

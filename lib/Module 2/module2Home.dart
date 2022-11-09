import 'package:flutter/material.dart';
import 'package:flutter_assignment/Module%202/Todo%20App/todo.dart';
import 'package:flutter_assignment/Module%202/calculator/screens/calc.dart';
import 'package:flutter_assignment/Module%202/flashLight/myHomePage.dart';
import 'package:flutter_assignment/Module%202/quiz%20app/questionScreen.dart';
import 'package:flutter_assignment/Module%202/sqflite%20crud/sqmain.dart';
import 'package:flutter_assignment/Module%202/url_launcher/urlHomePage.dart';
import 'package:flutter_assignment/Module%202/video-audio/vHome.dart';


class Module2 extends StatefulWidget {
  const Module2({Key? key}) : super(key: key);

  @override
  State<Module2> createState() => _Module2State();
}

class _Module2State extends State<Module2> {
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
                  'Calculator',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CalcPage()));

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
                  'Flash light',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyTorchHome()));
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
                  'Quiz app',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => QuestionPage()));

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
                  'Sqflite',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SqfliteHome()));
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
                  'Todo app',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TodoApp()));

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
                  'Url launcher',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => UrlHomePage()));

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
                  'video-audio',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => vHomePage()));

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

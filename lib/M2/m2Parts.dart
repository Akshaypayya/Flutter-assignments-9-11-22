import 'package:flutter/material.dart';
import 'package:flutter_assignment/M2/part%201/simple%20calc/simpleCalc.dart';
import 'package:flutter_assignment/M2/part%201/widget%20tree/widgetTree.dart';
import 'package:flutter_assignment/M2/part%202/container%20text/containerText.dart';
import 'package:flutter_assignment/M2/part%202/fab%201/FAB1.dart';
import 'package:flutter_assignment/M2/part%202/fab%202/FAB2.dart';
import 'package:flutter_assignment/M2/part%203/Container/container.dart';
import 'package:flutter_assignment/M2/part%203/Row%20and%20Colmn/mainPage.dart';
import 'package:flutter_assignment/M2/part%203/customized%20FAB/cFab.dart';
import 'package:flutter_assignment/M2/part%204/checkbox/flutterCheckbox.dart';
import 'package:flutter_assignment/M2/part%205/customized%20alert%20dailog/CustomAlertBox.dart';
import 'package:flutter_assignment/M2/part%205/gesture/ImageView.dart';
import 'package:flutter_assignment/M2/part%205/simple%20alert/alertBox2.dart';

import 'part 4/loginscreen/loginScreen.dart';
import 'part 4/registration/registraton.dart';

class M2Parts extends StatefulWidget {
  const M2Parts({Key? key}) : super(key: key);

  @override
  State<M2Parts> createState() => _M2PartsState();
}

class _M2PartsState extends State<M2Parts> {
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
                  'Simple Calculator',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SimpleCalc()));

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
                  'Widget Tree',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => WidgetTree()));
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
                  'Container & Text',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContainerEx()));

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
                  'Floating Action Button 1',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fab1()));
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
                  'Floating Action Button',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Fab2()));

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
                  'Container',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyContainer()));

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
                  'Customized FAB',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cfab()));

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
                  'Row and Column',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LayoutPage()));

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
                  'CheckBox',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlutterCheckbox()));

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
                  'Login Screen',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
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
                  'Register screen',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage()));
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
                  'Customized Alert Box',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AlertBox1()));
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
                  'Gesture-image',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageViews()));
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
                  'simple Alert',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyAlert()));
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

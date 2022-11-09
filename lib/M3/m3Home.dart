import 'package:flutter/material.dart';
import 'package:flutter_assignment/M3/part%201/Drop%20down%20button/dropDownButton.dart';
import 'package:flutter_assignment/M3/part%202/Login%20page%20&%20Sign%20up/login.dart';
import 'package:flutter_assignment/M3/part%202/silvergrid/silvergridmaker.dart';
import 'package:flutter_assignment/M3/part%202/widget%20tree/widgetTree.dart';

class M3Parts extends StatefulWidget {
  const M3Parts({Key? key}) : super(key: key);

  @override
  State<M3Parts> createState() => _M3PartsState();
}

class _M3PartsState extends State<M3Parts> {
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
                  'Bottom sheet',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomSheet()));
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
                  'Drop down buttton',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DropDown()));
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
                  'Login & Sign up',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));

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
                  'Silver grid',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CollapsingList()));
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mywidget()));

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
                  'Sign up with firebase',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyContainer()));

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
                  'Otp sending',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cfab()));

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
                  'Re-captcha',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => LayoutPage()));
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
                  'Reset password',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
                onPressed: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlutterCheckbox()));
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

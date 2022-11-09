import 'package:flutter/material.dart';
import 'package:flutter_assignment/M2/m2Parts.dart';
import 'package:flutter_assignment/M3/m3Home.dart';
import 'package:flutter_assignment/Module%202/module2Home.dart';
import 'package:flutter_assignment/Module%203/module3Home.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
          SizedBox(height: 180),

            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    'Module 2',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Module2()));

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
                    'Module 3',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Module3()));
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
                    'M2',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => M2Parts()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),SizedBox(height:20),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    'M3',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => M3Parts()));
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

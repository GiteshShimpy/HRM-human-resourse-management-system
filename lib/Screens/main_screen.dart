import 'dart:async';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hrm_satya_kabir/Screens/login_screen.dart';
import 'package:hrm_satya_kabir/Screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override 
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LoginPage())));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 135, 197),
      body: Container(
        height: height,
        width: width,
        child: Stack(children: [
          Container(
            height: height * 0.5,
            width: width * 1.0,
            child: Image.asset(
              "images/image8.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height * 0.5,
            child: Container(
              height: height * 0.5,
              width: width * 1.0,
              child: Image.asset(
                "images/homepage_1_2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: width * 0.35,
            child: Container(
              width: width * 0.32,
              height: height * 0.3,
              child: Image.asset(
                "images/sklogo.png",
              ),
            ),
          ),
          Positioned(
            top: height * 0.65,
            left: width * 0.23,
            child: Container(
              width: width * 0.58,
              height: height * 0.06,
              child: Image.asset(
                "images/skname.png",
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hrm_satya_kabir/Screens/Stop_Watch.dart';
import 'package:hrm_satya_kabir/Screens/login_screen.dart';
import 'package:hrm_satya_kabir/Screens/timer_manage.dart';
import 'package:hrm_satya_kabir/Screens/timer_start.dart';
import 'package:hrm_satya_kabir/components/birthday_cart.dart';
import 'package:hrm_satya_kabir/components/meeting_cart.dart';
import 'package:percent_indicator/percent_indicator.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  String e_name = "Gitesh shimpy";
  String email = "gitesh23shimpy@gmail.com";
  String e_designation = "Frontend developer";
  String e_id = "16";

  var myMenuItems = <String>[
    'Home',
    'Profile',
    'Setting',
  ];

  void onSelect(item) {
    switch (item) {
      case 'Home':
        print('Home clicked');
        break;
      case 'Profile':
        print('Profile clicked');
        break;
      case 'Setting':
        print('Setting clicked');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.09),
        child: AppBar(
          leading: Container(
              margin: EdgeInsets.only(top: height * 0.01, left: width * 0.01),
              child: Image.asset("images/sklogo.png")),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
              width: width * 0.50,
              height: height * 0.8,
              margin: EdgeInsets.only(top: height * 0.008),
              child: Image.asset(
                "images/skname1.png",
              )),
          actions: [
            PopupMenuButton(
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30.0,
                ),
                onSelected: onSelect,
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Overtime_Screen()),
                                );
                              },
                              child: Text("Overtime"))
                        ],
                      )),
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton(onPressed: () {}, child: Text("Request's"))
                        ],
                      )),
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EmployeeScreen()),
                                );
                              },
                              child: Text("Portfolio"))
                        ],
                      )),
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text("Signin"))
                        ],
                      )),
                      PopupMenuItem(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Logout"))
                        ],
                      ))
                    ]),
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Container(
              height: height * 0.25,
              width: width * 0.9,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  border: (Border.all(width: 0.1, color: Colors.white)),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(30.0)),
                  color: Color.fromARGB(255, 246, 248, 216),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 209, 200, 200),
                        spreadRadius: 3.0,
                        blurRadius: 5.0,
                        blurStyle: BlurStyle.normal),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.009,
                  ),
                  Text(
                    "Monthly overview",
                    style: TextStyle(color: Color.fromARGB(255, 196, 193, 193)),
                  ),
                  SizedBox(
                    height: height * 0.15,
                  ),
                ],
              ),
            ),
            Positioned(
              top: height * 0.08,
              left: width * 0.11,
              child: Column(
                children: [
                  CircularPercentIndicator(
                    radius: height * 0.05,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: width * 0.015,
                    percent: 0.8,
                    center: new Text(
                      "10h",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    progressColor: Color.fromARGB(255, 121, 192, 74),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Over Time",
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: height * 0.08,
              right: width * 0.1,
              child: Column(
                children: [
                  CircularPercentIndicator(
                    radius: height * 0.05,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: width * 0.015,
                    percent: 0.7,
                    center: new Text(
                      "7",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    progressColor: Color.fromARGB(255, 255, 61, 61),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Leave",
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
                top: height * 0.28,
                child: Container(
                  height: height * 0.4,
                  width: width * 0.9,
                  margin: EdgeInsets.all(20.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      border: (Border.all(width: 0.1, color: Colors.white)),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(20.0)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 209, 200, 200),
                            spreadRadius: 3.0,
                            blurRadius: 5.0,
                            blurStyle: BlurStyle.normal),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      Text(
                        e_name,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: height * 0.001,
                      ),
                      Text(
                        email,
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 133, 132, 132)),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "EMPLOYEE  ID:",
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            e_id,
                            style: TextStyle(
                                fontSize: 13.0, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.badge,
                          ),
                          SizedBox(
                            width: width * 0.020,
                          ),
                          Text(
                            e_designation,
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      SizedBox(
                        height: height * 0.04,
                        width: width * 0.30,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 13, 22, 31),
                          )),
                          child: Text("PUNCH IN",
                              style: TextStyle(
                                fontSize: width * 0.04,
                              )),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
              top: height * 0.75,
              left: width * 0.025,
              child: Container(
                height: height * 0.080,
                width: width * 0.95,
                decoration: BoxDecoration(
                  border: (Border.all(
                      width: 0.1, color: Color.fromARGB(255, 0, 0, 0))),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MeetingCart()),
                      );
                    },
                    child: SizedBox(
                        width: width * 0.2,
                        height: height * 0.13,
                        child: Image.asset("images/homelogo.png")),
                  ),
                  SizedBox(
                    width: width * 0.4,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Overtime_Screen()),
                      );
                    },
                    child: SizedBox(
                        width: width * 0.2,
                        height: height * 0.13,
                        child: Image.asset("images/holidy.png")),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  )
                ]),
              ),
            ),
            Positioned(
              top: height * 0.72,
              left: width * 0.44,
              child: RotationTransition(
                turns: new AlwaysStoppedAnimation(-50 / 360),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      border: Border.all(
                          width: 1.0,
                          color: Color.fromARGB(255, 235, 241, 236)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  width: 60.0,
                  height: 60.0,
                ),
              ),
            ),
            Positioned(
              top: height * 0.73,
              left: width * 0.44,
              child: TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {},
                child: Image.asset("images/exit.png"),
              ),
            ),
            Positioned(
                top: height * 0.24,
                left: width * 0.33,
                child: SizedBox(
                  height: height * 0.15,
                  child: Container(
                    child: CircleAvatar(
                        radius: width * 0.18,
                        backgroundImage: AssetImage("images/profileback.jpg")),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

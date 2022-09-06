import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Overtime_Screen extends StatefulWidget {
  @override
  _Overtime_ScreenState createState() => _Overtime_ScreenState();
}

class _Overtime_ScreenState extends State<Overtime_Screen> {
  late Stopwatch stopwatch;
  late Timer t;
  String btntext = "Stop";

  void handleStartStop() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
      btntext = "Restart";
    } else {
      stopwatch.reset();
      btntext = "Stop";
    }
  }

  String ChangedText() {
    if (stopwatch.isRunning != true && returnFormattedText() == "00:00:00") {
      return "Start";
    } else {
      return returnFormattedText();
    }
  }

  String returnFormattedText() {
    var milli = stopwatch.elapsed.inMilliseconds;

    String seconds = ((milli ~/ 1000) % 60).toString().padLeft(2, "0");
    String minutes = ((milli ~/ 1000) ~/ 60).toString().padLeft(2, "0");
    String hours =
        ((int.parse(minutes) ~/ 1000) ~/ 60).toString().padLeft(2, "0");

    return "$hours:$minutes:$seconds";
  }

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();

    t = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.035,
                  ),
                  SizedBox(
                    width: width * 0.14,
                    height: height * 0.06,
                    child: Container(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.0),
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 236, 235, 235),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Text(
                    "OverTime",
                    style:
                        TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    width: width * 0.9,
                    height: height * 0.5,
                    child: Image.asset(
                      "images/circle.png",
                    ),
                  ),
                  Positioned(
                    top: height * 0.021,
                    left: width * 0.11,
                    child: CupertinoButton(
                      onPressed: () {
                        if (stopwatch.isRunning != true) {
                          stopwatch.start();
                        }
                      },
                      padding: EdgeInsets.all(0),
                      child: Container(
                        height: height * 0.45,
                        width: width * 0.7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 5,
                          ),
                        ),
                        child: Text(
                          ChangedText(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.36,
                    left: width * 0.67,
                    child: SizedBox(
                      height: height * 0.1,
                      width: width * 0.15,
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.055,
                            width: width * 0.12,
                            decoration: BoxDecoration(
                                border: (Border.all(
                                    width: 0.1, color: Colors.white)),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 209, 200, 200),
                                      spreadRadius: 1.0,
                                      blurRadius: 1.0,
                                      blurStyle: BlurStyle.normal),
                                ]),
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(0, 255, 255, 255)),
                                elevation: MaterialStateProperty.all(0.0),
                              ),
                              onPressed: () {
                                handleStartStop();
                              },
                              child: Icon(
                                stopwatch.isRunning != true
                                    ? Icons.play_circle
                                    : Icons.pause,
                                color: Color.fromARGB(255, 255, 30, 0),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              btntext,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.29,
                    left: width * 0.43,
                    child: Container(
                        width: width * 0.05,
                        height: height * 0.1,
                        child: Image.asset(
                          "images/group33.png",
                        )),
                  )
                ],
              ),
              SizedBox(height: height * 0.15),
              Row(
                children: [
                  SizedBox(width: width * 0.18),
                  Container(
                    width: width * 0.70,
                    height: height * 0.02,
                    child: Text(
                      "Your overtime is automatically convert in",
                      style: TextStyle(
                          fontFamily: 'Playfair Display',
                          color: Color.fromARGB(255, 167, 162, 162)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: width * 0.18),
                  Container(
                    width: width * 0.70,
                    height: height * 0.02,
                    child: Text(
                      "     days don't worry do your hardwork",
                      style: TextStyle(
                          fontFamily: 'Playfair Display',
                          color: Color.fromARGB(255, 167, 162, 162)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

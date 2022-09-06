import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:hrm_satya_kabir/Screens/Stop_Watch.dart';
import 'package:hrm_satya_kabir/Screens/timer_manage.dart';

class TimerScreen1 extends StatefulWidget {
  const TimerScreen1({Key? key}) : super(key: key);

  @override
  State<TimerScreen1> createState() => _TimerScreen1State();
}

class _TimerScreen1State extends State<TimerScreen1> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                width: width * 0.20,
              ),
              Text(
                "OverTime",
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.10,
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
                top: height * 0.20,
                left: width * 0.31,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Start",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
          SizedBox(height: height * 0.15),
          Container(
            margin: EdgeInsets.only(left: width * 0.04),
            width: width * 0.70,
            height: height * 0.02,
            child: Text(
              "Your overtime is automatically convert in",
              style: TextStyle(
                  fontFamily: 'Playfair Display',
                  color: Color.fromARGB(255, 167, 162, 162)),
            ),
          ),
          Container(
            width: width * 0.70,
            height: height * 0.02,
            child: Text(
              "      days don't worry do your hardwork",
              style: TextStyle(
                  fontFamily: 'Playfair Display',
                  color: Color.fromARGB(255, 167, 162, 162)),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;
  String btntext = "Stop";
  int minute = 00;
  int hours = 00;
  int second = 00;

  int time() {
    return minute;
  }

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
                width: width * 0.2,
              ),
              Text(
                "OverTime",
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
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
                top: height * 0.02,
                left: width * 0.13,
                child: CircularCountDownTimer(
                  duration: 80,
                  initialDuration: 1,
                  controller: _controller,
                  width: width * 0.65,
                  height: height * 0.45,
                  ringColor: Color.fromARGB(255, 255, 255, 255),
                  ringGradient: null,
                  fillColor: Color.fromARGB(255, 0, 0, 0),
                  fillGradient: null,
                  backgroundColor: Color.fromARGB(0, 155, 39, 176),
                  backgroundGradient: null,
                  strokeWidth: 5.0,
                  strokeCap: StrokeCap.round,
                  textStyle: TextStyle(
                      fontSize: 33.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textFormat: CountdownTextFormat.S,
                  isReverse: false,
                  isReverseAnimation: false,
                  isTimerTextShown: true,
                  autoStart: true,
                  onStart: () {
                    debugPrint('Countdown Started');
                  },
                  onComplete: () {
                    Text("Thankyou for\novertime");
                  },
                  onChange: (String timeStamp) {
                    debugPrint('Countdown Changed $timeStamp');
                  },
                ),
              ),
              Positioned(
                top: height * 0.37,
                left: width * 0.60,
                child: SizedBox(
                  width: width * 0.15,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.052,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                            border:
                                (Border.all(width: 0.1, color: Colors.white)),
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
                            setState(() {
                              if (_isPause) {
                                _isPause = false;
                                _controller.restart();
                                btntext = "Stop";
                              } else {
                                _isPause = true;
                                _controller.pause();
                                btntext = " Restart";
                              }
                            });
                          },
                          child: Icon(
                            _isPause == true ? Icons.play_circle : Icons.pause,
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

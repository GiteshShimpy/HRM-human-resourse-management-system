import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BirthdayCart extends StatefulWidget {
  const BirthdayCart({Key? key}) : super(key: key);

  @override
  State<BirthdayCart> createState() => _BirthdayCartState();
}

class _BirthdayCartState extends State<BirthdayCart> {
  @override
  Widget build(BuildContext context) {
    String ename = "Gitesh shimpy";
    String about = "Today";
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 200.0),
      height: h * 0.1,
      width: w,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: (Border.all(width: 0.1, color: Colors.white)),
          borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 211, 211, 211),
                spreadRadius: 10.0,
                blurRadius: 10.0,
                blurStyle: BlurStyle.normal),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: w * 0.01,
          ),
          SizedBox(
              width: w * 0.2,
              height: h * 0.13,
              child: Image.asset("images/bboy.png")),
          SizedBox(
            width: w * 0.03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ename,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                about,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(
            width: w * 0.1,
          ),
          SizedBox(
              width: w * 0.2,
              height: h * 0.15,
              child: Image.asset("images/cake.png")),
        ],
      ),
    ));
  }
}

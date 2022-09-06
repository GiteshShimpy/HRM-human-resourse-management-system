import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hrm_satya_kabir/Screens/employee_details.dart';
import 'package:hrm_satya_kabir/Screens/timer_start.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 79, 61, 86),
      body: Center(
          child: Container(
        height: height * 0.4,
        width: width * 0.9,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: (Border.all(width: 0.1, color: Colors.white)),
          borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
                height: height * 0.19,
                width: width * 0.50,
                child: Image.asset(
                  "images/success.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Text(
                "Success",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Text(
                "Your request has succesfully sent",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 165, 158, 168),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.05,
              width: width * 0.35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployeeScreen()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 79, 61, 86),
                )),
                child: Text("Continue",
                    style: TextStyle(
                      fontSize: 16.0,
                    )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

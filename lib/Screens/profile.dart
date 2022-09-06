import 'package:flutter/material.dart';
import 'package:hrm_satya_kabir/Screens/leave_page.dart';
import 'package:hrm_satya_kabir/components/image_picker.dart';

class ProfileDemo extends StatefulWidget {
  ProfileDemo({Key? key}) : super(key: key);

  @override
  State<ProfileDemo> createState() => _ProfileDemoState();
}

class _ProfileDemoState extends State<ProfileDemo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: height,
        width: width,
        child: Column(
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
                  width: width * 0.16,
                  height: height * 0.07,
                  child: Container(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0.0),
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 236, 235, 235),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ))),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  width: width * 0.18,
                ),
                Text(
                  "My profile",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              child: ImagePickerDemo(),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Full Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ],
            ),
            Container(
              height: height * 0.060,
              margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(),
                    labelText: "",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 118, 125, 148),
                    )),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ],
            ),
            Container(
              height: height * 0.060,
              margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 44, 255, 61),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(),
                    labelText: "",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 118, 125, 148),
                    )),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ],
            ),
            Container(
              height: height * 0.060,
              margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
              padding: EdgeInsets.only(left: width * 0.04, right: width * 0.04),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 243, 242, 242),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    hintStyle: TextStyle(),
                    labelText: "",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 118, 125, 148),
                    )),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                ),
              ],
            ),
            Container(
              height: height * 0.2,
              width: width * 0.9,
              margin:
                  EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
              padding: EdgeInsets.only(
                left: width * 0.02,
                right: width * 0.02,
              ),
              decoration: BoxDecoration(
                border: (Border.all(
                  width: 1.5,
                  color: Color.fromARGB(255, 170, 170, 170),
                )),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(15.0)),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(),
                    labelText: "",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 118, 125, 148),
                    )),
              ),
            ),
            RotationTransition(
              turns: new AlwaysStoppedAnimation(-40 / 360),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    border: Border.all(
                        width: 2.0, color: Color.fromARGB(255, 56, 56, 56)),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                width: width * 0.16,
                height: height * 0.07,
                child: TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LeaveScreen()));
                  },
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

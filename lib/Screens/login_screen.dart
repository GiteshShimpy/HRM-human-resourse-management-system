import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hrm_satya_kabir/Screens/profile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obsecutetext = true;
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
                Container(
                  width: width * 0.9,
                  height: height * 0.3,
                  child: Stack(children: [
                    Positioned(
                      top: height * 0.05,
                      left: width * 0.01,
                      child: Container(
                        width: width * 0.20,
                        height: height * 0.20,
                        child: Image.asset("images/Frame7.png"),
                      ),
                    ),
                    Positioned(
                      top: height * 0.05,
                      left: width * 0.7,
                      child: Container(
                        width: width * 0.1,
                        height: height * 0.10,
                        child: Image.asset("images/Ellipse3.png"),
                      ),
                    ),
                    Positioned(
                      top: height * 0.13,
                      left: width * 0.5,
                      child: Container(
                        width: width * 0.1,
                        height: height * 0.10,
                        child: Image.asset("images/Ellipse3.png"),
                      ),
                    ),
                    Positioned(
                      top: height * 0.2,
                      left: width * 0.85,
                      child: Container(
                        width: width * 0.05,
                        height: height * 0.05,
                        child: Image.asset("images/Ellipse4.png"),
                      ),
                    )
                  ]),
                ),
                Row(children: [
                  SizedBox(
                    width: width * 0.08,
                  ),
                  Container(
                    width: width * 0.6,
                    height: height * 0.09,
                    child: Text(
                      "Hey, Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  width: width * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      prefixIcon: Icon(Icons.mail),
                      hintStyle: TextStyle(),
                      labelText: "email",
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.9,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: _obsecutetext,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: (() {
                          setState(() {
                            _obsecutetext = !_obsecutetext;
                          });
                        }),
                        child: Icon(_obsecutetext
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintStyle: TextStyle(),
                      labelText: "Password",
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 168, 168)),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.05,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.9,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileDemo()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 54, 165, 132),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(15)),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            )),
      ),
    );
  }
}

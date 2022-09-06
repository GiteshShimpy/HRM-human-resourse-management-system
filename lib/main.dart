import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrm_satya_kabir/Screens/main_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

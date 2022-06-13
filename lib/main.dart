import 'package:flutter/material.dart';
import 'package:qrcode_app/home.dart';
import 'package:qrcode_app/screen/generate.dart';
import 'package:qrcode_app/screen/scan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => Home(),
        "scan": (context) => Scanpage(),
        "generate": (context) => Generatepage(),
      },
      home: Home(),
    );
  }
}

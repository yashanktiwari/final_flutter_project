// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, depend_on_referenced_packages
import 'dart:async';
import 'package:flutter/material.dart';
import 'get_started.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => GetStarted())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image(
      image: AssetImage("images/splash_screen.png"),
    ));
  }
}

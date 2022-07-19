//ignore: depend_on_referenced_packages

// ignore_for_file: prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'package:food_delivery_app/login.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("WELCOME TO OUR APPLICATION",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 183, 0, 98))),
            Image(
              image: AssetImage("images/food_delivery_app_logo.png"),
              height: 400,
              width: 450,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 183, 0, 98)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                },
                child: Text("Get Started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

import 'contactus.dart';

class Settings extends StatelessWidget {
  String name;
  String email;
  String mobile;
  String password;

  Settings(this.name, this.email, this.mobile, this.password, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 300,
            child: Image(image: AssetImage("images/setting.png")),
            margin: EdgeInsets.only(left: 100, right: 100, top: 20),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
                top: height / 12.47),
            child: Text(
              "Username: $name",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
                top: height / 87.3),
            child: Text(
              "Email ID: $email",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
                top: height / 87.3),
            child: Text(
              "Mobile Number: $mobile",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.contact_support),
          tooltip: "Contact Us",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ContactUs()));
          }),
    ));
  }
}

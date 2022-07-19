// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//Size of the screen = 873
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'mainfoodpage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: height / 8.73),
              child: Text(
                "WELCOME",
                style: TextStyle(
                  fontSize: 32,
                  color: const Color(0xFF0277BD),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: height / 11.64,
                left: height / 17.46,
                right: height / 17.46,
              ),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 87.3),
                    )),
              ),
            ),
            SizedBox(
              height: height / 43.65,
            ),
            Container(
              margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
              ),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 87.3),
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: height / 43.65,
            ),
            Container(
              margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
              ),
              child: TextField(
                controller: mobile,
                decoration: InputDecoration(
                    hintText: 'Mobile No.',
                    prefixIcon: Icon(
                      Icons.phone_android,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 87.3),
                    )),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: height / 43.65,
            ),
            Container(
              margin: EdgeInsets.only(
                left: height / 17.46,
                right: height / 17.46,
              ),
              child: TextField(
                controller: password,
                obscureText: _secureText,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(_secureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(height / 87.3),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: height / 17.46,
                      right: height / 17.46,
                      top: height / 17.46),
                  child: Text("Sign In",
                      style: TextStyle(
                        fontSize: height / 29.1,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: height / 17.46, right: height / 17.46),
                  child: CircleAvatar(
                    radius: height / 29.1,
                    child: IconButton(
                      icon: Icon(Icons.chevron_right),
                      onPressed: () {
                        if (name.text.isNotEmpty &&
                            email.text.isNotEmpty &&
                            password.text.isNotEmpty &&
                            mobile.text.isNotEmpty) {
                          if (EmailValidator.validate(email.text)) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MainFoodPage(
                                        name.text,
                                        email.text,
                                        mobile.text,
                                        password.text))));
                          }
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

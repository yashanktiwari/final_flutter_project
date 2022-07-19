// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery_app/food_details.dart';

import '../dimensions.dart';

class BigText extends StatelessWidget {
  int pageno;
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  String name;
  String email;
  String mobile;
  String password;

  BigText(
      {Key? key,
      this.color = const Color(
          0xFF332d2b), //To set the default property we need to use numbers, we cannot use variables
      required this.text,
      required this.pageno,
      required this.name,
      required this.email,
      required this.mobile,
      required this.password,
      this.size = 0,
      this.overFlow =
          TextOverflow.ellipsis //ellipsis: "..." when the text is long
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Text(
          text,
          maxLines: 1,
          overflow: overFlow,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: color,
            fontSize: size == 0 ? Dimensions.font20 : size,
            fontWeight: FontWeight.w400,
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FoodDetails(pageno, name, email, mobile, password)));
        });
  }
}

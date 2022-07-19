// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../dimensions.dart';

class BigTextWithoutTap extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigTextWithoutTap(
      {Key? key,
      this.color = const Color(
          0xFF332d2b), //To set the default property we need to use numbers, we cannot use variables
      required this.text,
      this.size = 0,
      this.overFlow =
          TextOverflow.ellipsis //ellipsis: "..." when the text is long
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

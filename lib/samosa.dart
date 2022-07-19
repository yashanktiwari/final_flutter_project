// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Samosa extends StatelessWidget {
  const Samosa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Samosa")),
        body: Text("Tasty samosa"),
      ),
    );
  }
}

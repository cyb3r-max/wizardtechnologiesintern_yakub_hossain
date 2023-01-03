import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  int dues;
  Color bgcolor, fontColor;

  CustomText(
      {required this.dues,
      this.bgcolor = Colors.white,
      this.fontColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      "\u09F3 ${dues}",
      style: TextStyle(color: fontColor, fontWeight: FontWeight.bold),
    );
  }
}

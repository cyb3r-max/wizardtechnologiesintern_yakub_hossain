import 'package:flutter/material.dart';

class SubTableHead extends StatelessWidget {
  String head;
  SubTableHead({Key? key, required this.head}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: double.maxFinite,
        child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8.0),
            color: Colors.teal,
            child: Text(head,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white))));
  }
}

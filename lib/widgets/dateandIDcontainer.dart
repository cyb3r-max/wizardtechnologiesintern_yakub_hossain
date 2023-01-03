import 'package:flutter/material.dart';

class DateandIDContainer extends StatelessWidget {
  String head, subHead;
  bool isBold;
  DateandIDContainer(
      {Key? key, required this.head, required this.subHead, this.isBold = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            head,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          SizedBox(width: 5),
          Text(
            subHead,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.normal : FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

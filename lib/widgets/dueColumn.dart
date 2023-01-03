import 'package:flutter/material.dart';
import 'package:wizardtechnologiesintern_yakub_hossain/widgets/amount.dart';

class DuesColumn extends StatelessWidget {
  int dues;
  Color bgcolor, fontColor;

  DuesColumn(
      {Key? key,
      required this.dues,
      this.bgcolor = Colors.white,
      this.fontColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade50,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Due"),
          CustomText(
            dues: dues,
            bgcolor: Colors.teal.shade100,
            fontColor: Colors.orange,
          )
        ],
      ),
    );
  }
}

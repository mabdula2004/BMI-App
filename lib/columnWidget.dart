import 'package:bmi_app/ConstantFile.dart';
import 'package:flutter/material.dart';
class columnWidget extends StatelessWidget {
  final String txt;
  final IconData ico;

  columnWidget({required this.txt, required this.ico});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 100,
        ),
        SizedBox(height: 10,),
        Text(txt,
          style: KLabelStyle,
        ),
      ],
    );
  }
}
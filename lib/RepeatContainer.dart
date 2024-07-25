import 'package:flutter/material.dart';

class RepeatContainer extends StatelessWidget {
  RepeatContainer({required this.color, this.cardWidget, this.onPressed});

  final Color color;
  final Widget? cardWidget;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed as void Function()?,
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardWidget,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

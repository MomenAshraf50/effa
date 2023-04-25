import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  DefaultText({
    Key? key,
    required this.text,
    this.fontWeight,
    required this.fontSize,
    this.color,
  }) : super(key: key);

  String text;
  double fontSize;
  FontWeight? fontWeight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

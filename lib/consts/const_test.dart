import 'package:flutter/material.dart';

class ConstText extends StatelessWidget {
  ConstText(
      {super.key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.textAlign});
  String text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: fontStyle ?? FontStyle.normal,
        ),
        textAlign: textAlign);
  }
}

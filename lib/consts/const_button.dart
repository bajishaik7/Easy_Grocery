import 'package:easy_grocery/consts/const_test.dart';
import 'package:flutter/material.dart';

class ConstButton extends StatelessWidget {
  ConstButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.height,
      this.width,
      this.padding,
      this.color});
  Widget child;
  Function() onPressed;
  double? height;
  double? width;
  EdgeInsetsGeometry? padding;
  Color? color;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return InkWell(
        onTap: onPressed,
        child: Container(
          margin: padding ?? EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: color ?? Color(0xff53B175),
          ),
          height: height ?? h * 60 / h,
          width: width ?? w * 353 / w,
          child: Center(child: child),
        ));
  }
}

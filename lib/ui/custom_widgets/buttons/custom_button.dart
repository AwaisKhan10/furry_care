import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final onTap;
  final Color? buttonColor;
  final Color? textColor;
  final BorderRadius? borderRadius;

  const CustomButton(
      {super.key,
      this.onTap,
      this.text,
      this.buttonColor,
      this.textColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 47.h,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: borderRadius ?? BorderRadius.circular(30.r)),
        child: Center(
          child: Text('$text', style: style16.copyWith(color: textColor)),
        ),
      ),
    );
  }
}

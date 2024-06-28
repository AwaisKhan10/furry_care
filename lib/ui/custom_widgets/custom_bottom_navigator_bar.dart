// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, use_super_parameters

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomBottomNavigator extends StatelessWidget {
  final image;
  String? text;
  final currentIndex;
  final indexNumber;
  VoidCallback? onPressed;

  CustomBottomNavigator(
      {Key? key,
      required this.image,
      required this.text,
      required this.currentIndex,
      required this.indexNumber,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$image",
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "$text",
              style: style12.copyWith(
                color: accentColor,
              ),
            )
          ],
        ));
  }
}

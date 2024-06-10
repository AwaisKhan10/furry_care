// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomBottomNavigator extends StatelessWidget {
  final image;
  final currentIndex;
  final indexNumber;
  VoidCallback? onPressed;

  CustomBottomNavigator(
      {Key? key,
      required this.image,
      required this.currentIndex,
      required this.indexNumber,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, top: 10),
          child: Image.asset(
            "$image",
            height: 30.h,
            width: 30.w,
          ),
        ));
  }
}

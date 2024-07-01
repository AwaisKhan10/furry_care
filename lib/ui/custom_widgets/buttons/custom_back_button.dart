// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomBackButton extends StatelessWidget {
  VoidCallback? onPressed;
  CustomBackButton({super.key, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 14, top: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        // height: 30.h,
        // width: 30.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 22.sp,
          color: primaryColor,
        ),
      ),
    );
  }
}

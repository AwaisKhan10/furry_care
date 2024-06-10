import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Enter your email",
  hintStyle: style16.copyWith(color: const Color(0xffC6BFBA)),
  prefixIconColor: borderColor,
  suffixIconColor: borderColor,
  fillColor: textFieldFillColor,
  filled: true,
  contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: borderColor, width: 1.0),
      borderRadius: BorderRadius.circular(10)),
);

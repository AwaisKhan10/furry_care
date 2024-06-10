import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furry_care/core/constants/strings.dart';

class SvgAssets {
  static Widget splashScreen =
      SvgPicture.asset('$staticAsset/splash.svg', fit: BoxFit.cover);
  static Widget logo = SvgPicture.asset(
    '$staticAsset/logo.svg',
    fit: BoxFit.contain,
  );
}

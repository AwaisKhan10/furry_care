import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:furry_care/ui/screens/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  init() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => WelcomeScreen());
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(gradient: gradientColor),
        child: Image.asset(
          AppAssets.splash_logo,
          scale: 4,
        ),
      ),
    );
  }
}

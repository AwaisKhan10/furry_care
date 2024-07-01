import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/auth/sign_in/sign_in_screen.dart';
import 'package:furry_care/ui/screens/auth/sign_in/sign_view_model.dart';
import 'package:furry_care/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:furry_care/ui/screens/root/root_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInViewModel(),
      child: Consumer<SignInViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: primaryColor,

          ///
          /// Start Body
          ///
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///
                /// Logo Image
                ///
                Image.asset(
                  AppAssets.furry_care_logo,
                  scale: 3,
                ),
                SizedBox(
                  height: 30.h,
                ),

                CustomButton(
                    textColor: greyColor,
                    onTap: () {
                      Get.to(SignInScreen());
                    },
                    text: "Log In",
                    borderRadius: BorderRadius.circular(15.r),
                    buttonColor: buttonColor),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  textColor: buttonColor,
                  onTap: () {
                    Get.to(SignUpScreen());
                  },
                  text: "Sign Up",
                  borderRadius: BorderRadius.circular(15.r),
                  buttonColor: accentColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Get.offAll(RootScreen());
                  },
                  child: Text(
                    "Skip",
                    style: style16.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: 20.sp,
                        color: buttonColor,
                        decorationColor: buttonColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

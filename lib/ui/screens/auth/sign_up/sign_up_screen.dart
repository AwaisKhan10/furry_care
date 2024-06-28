// ignore_for_file: use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/strings.dart';
import 'package:furry_care/core/constants/text_field_decoration.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/auth/sign_in/sign_in_screen.dart';
import 'package:furry_care/ui/screens/auth/sign_up/sign_up_view_model.dart';
import 'package:furry_care/ui/screens/root/root_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(),
      child: Consumer<SignUpViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: primaryColor,
          key: _scaffoldkey,

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60.h,
                      ),

                      ///
                      /// Logo Image
                      ///
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.furry_care_logo,
                          scale: 6,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),

                      ///
                      /// Sign up Text Fields
                      ///
                      Align(
                        alignment: Alignment.topRight,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            // Padding(
                            //   padding:
                            //       const EdgeInsets.symmetric(vertical: 5.0),
                            //   child: Stack(
                            //     alignment: Alignment.topCenter,
                            //     children: [
                            //       Image.asset(
                            //         "$staticAsset/sign_up.png",
                            //       ),

                            //       ///
                            //       /// Text Fields
                            //     ],
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: ClipPath(
                                clipper: Clip1Clipper(),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: accentColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: blackColor.withOpacity(0.25),
                                            offset: const Offset(0, 4),
                                            blurRadius: 4.0,
                                            spreadRadius: 0.1),
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 40.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("Sign Up",
                                              style: style16.copyWith(
                                                  color: blackColor)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 60.h,
                                      ),

                                      ///
                                      /// Name|:name
                                      ///

                                      TextFormField(
                                        cursorColor: primaryColor,
                                        style:
                                            const TextStyle(color: blackColor),
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[a-z_0-9]")),
                                        ],
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (val) {
                                          if (val!.trim().isEmpty) {
                                            return "Please enter Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                        // controller: model.passwordController,
                                        onChanged: (val) {
                                          // model.signUpBody.username = val.trim();
                                        },
                                        decoration: authFieldDecoration
                                            .copyWith(hintText: "Name"),
                                      ),

                                      SizedBox(height: 15.h),

                                      ///
                                      /// Email Address
                                      ///

                                      TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (val) {
                                          if (!val!.isEmail) {
                                            return "Please enter email";
                                          }
                                          return null;
                                        },
                                        onChanged: (val) {
                                          // model.signUpBody.email = val.trim();
                                        },
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: authFieldDecoration
                                            .copyWith(hintText: "Email ID"),
                                      ),
                                      SizedBox(height: 15.h),

                                      ///
                                      /// Password
                                      ///

                                      TextFormField(
                                        inputFormatters: [
                                          // FilteringTextInputFormatter.allow(r"\s\b|\b\s"),
                                          FilteringTextInputFormatter.deny(
                                              RegExp(r"\s\b|\b\s")),
                                        ],
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (val) {
                                          if (val!.trim().isEmpty) {
                                            return "Please enter password";
                                          } else if (val.trim().length < 7) {
                                            return "Password length must be greater than 7 characters";
                                          } else {
                                            return null;
                                          }
                                        },
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText:
                                            model.passswordVisibilty == true
                                                ? true
                                                : false,

                                        // controller: model.passwordController,
                                        onChanged: (val) {
                                          // model.signUpBody.password = val.trim();
                                        },
                                        decoration:
                                            authFieldDecoration.copyWith(
                                          hintText: "Password",
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              model.togglePasswordVisibility();
                                            },
                                            child: Icon(
                                              model.passswordVisibilty == false
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              size: 18,
                                              // color: KTextColor2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),

                                      ///
                                      /// Re - ENTER password
                                      ///
                                      TextFormField(
                                        inputFormatters: [
                                          // FilteringTextInputFormatter.allow(r"\s\b|\b\s"),
                                          FilteringTextInputFormatter.deny(
                                              RegExp(r"\s\b|\b\s")),
                                        ],
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (val) {
                                          if (val!.trim().isEmpty) {
                                            return "Please Re enter password";
                                          } else if (val.trim().length < 7) {
                                            return "Password length must be greater than 7 characters";
                                          } else {
                                            return null;
                                          }
                                        },
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                        obscureText:
                                            model.passswordVisibilty1 == true
                                                ? true
                                                : false,

                                        // controller: model.passwordController,
                                        onChanged: (val) {
                                          // model.signUpBody.password = val.trim();
                                        },
                                        decoration:
                                            authFieldDecoration.copyWith(
                                          hintText: "Re enter password",
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              model.togglePasswordVisibility1();
                                            },
                                            child: Icon(
                                              model.passswordVisibilty1 == false
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              size: 18,
                                              // color: KTextColor2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),

                                      TextFormField(
                                        cursorColor: primaryColor,
                                        style:
                                            const TextStyle(color: blackColor),
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.allow(
                                              RegExp("[a-z_0-9]")),
                                        ],
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        validator: (val) {
                                          if (val!.trim().isEmpty) {
                                            return "Please enter Mobile No";
                                          } else {
                                            return null;
                                          }
                                        },
                                        // controller: model.passwordController,
                                        onChanged: (val) {
                                          // model.signUpBody.username = val.trim();
                                        },
                                        decoration: authFieldDecoration
                                            .copyWith(hintText: "Mobile No"),
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                      ),

                                      ///
                                      /// Register Button for the new account
                                      ///
                                      CustomButton(
                                          text: "Register",
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // model.signUp(context);
                                              Get.offAll(RootScreen());
                                            }
                                          },
                                          buttonColor: borderColor,
                                          textColor: primaryColor)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.offAll(SignInScreen());
                              },
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Image.asset(
                                    "$staticAsset/login2.png",
                                    scale: 3.3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 30.0, right: 30),
                                    child: Text("Log In", style: style16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),

                      ///
                      /// OR
                      ///
                      Text("OR",
                          style: style16.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      Text("Log In with",
                          style: style16.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400)),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppAssets.google,
                            scale: 3.4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 10),
                            child: Image.asset(
                              AppAssets.facebook,
                              scale: 3,
                            ),
                          ),
                          Image.asset(
                            AppAssets.twitter,
                            scale: 3.4,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Clip1Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define the radius for the corners
    double cornerRadius = 20.0;

    // Start from the top left corner with a slight inward curve
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    // Draw a slight horizontal line to the right after the curve
    path.lineTo(size.width * 0.15, 0);

    // Draw a diagonal line to the slanted top right corner
    path.lineTo(size.width, 145.h);

    // Draw a line to the bottom right corner with a slight inward curve
    path.lineTo(size.width, size.height - cornerRadius);
    path.quadraticBezierTo(
        size.width, size.height, size.width - cornerRadius, size.height);

    // Draw a line to the bottom left corner with a slight inward curve
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);

    // Close the path to form the shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Since the clipping is based on a fixed path, we return false
    // to indicate that re-clipping is not necessary.
    return false;
  }
}

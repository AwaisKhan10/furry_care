import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: accentColor,
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///
          /// Profile Detail
          ///
          _profileDetail(),

          ///
          /// Bottom screens data to navigate other screens
          ///
          Column(
            children: [
              _boxContainer(
                  ontap: () {}, text: 'Profile', image: AppAssets.profile),
              _boxContainer(
                  ontap: () {}, text: 'Courses', image: AppAssets.courses),
              _boxContainer(
                  ontap: () {}, text: 'Blogs', image: AppAssets.blogs),
              _boxContainer(
                  ontap: () {},
                  text: 'Challenges',
                  image: AppAssets.challenges),
            ],
          )
        ],
      ),
    ),
  );
}

_profileDetail() {
  return Column(
    children: [
      ///
      /// Profile
      ///
      Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: CircleAvatar(
          radius: 50.r,
          backgroundImage: AssetImage(
            AppAssets.user2,
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),

      ///
      /// User Name
      ///
      Text(
        "Jiya",
        style: style23,
      ),
      SizedBox(
        height: 20.h,
      ),

      ///
      /// Points Earned
      ///
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Points Earned : ",
            style: style14.copyWith(fontWeight: FontWeight.w600)),
        TextSpan(text: "500pts", style: style14),
      ])),
      SizedBox(
        height: 10.h,
      ),

      ///
      /// Badges Earned
      ///
      Text(
        "Badges Earned",
        style: style14.copyWith(fontWeight: FontWeight.w600),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.badges1,
            scale: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              AppAssets.badges2,
              scale: 4,
            ),
          ),
          Image.asset(
            AppAssets.badges3,
            scale: 4,
          ),
        ],
      )
    ],
  );
}

Widget _boxContainer(
    {required VoidCallback ontap,
    required String text,
    required String image}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: whiteColor,
        border: Border(
          bottom: BorderSide(
            color: borderColor,
            width: 1.0, // Adjust the width of the border as needed
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 3,
          ),
          const SizedBox(
              width: 16.0), // Add some spacing between the icon and the text
          Text(
            text,
            style: styleNormal16.copyWith(color: borderColor),
          ),
        ],
      ),
    ),
  );
}

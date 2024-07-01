// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/users_data.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class CustomUsersData extends StatelessWidget {
  UsersData usersData = UsersData();
  CustomUsersData({required this.usersData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: EdgeInsets.all(16.sp),
      decoration: HomeSceenContainerdecoration,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  ///
                  /// User Image
                  ///
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage("${usersData.profileImgUrl}"),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),

                  ///
                  /// User Name
                  ///
                  Text(
                    "${usersData.name}",
                    style: styleNormal16,
                  ),
                ],
              ),

              ///
              /// Follow this fellow or person
              ///
              Text(
                "Follow",
                style: style14,
              ),
            ],
          ),

          ///
          /// Center Image for the center of the Container
          ///
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 213.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "${usersData.imgUrl}",
                    ),
                    fit: BoxFit.cover)),
          ),

          ///
          /// like share and comment icons
          ///
          Row(
            children: [
              Image.asset(
                AppAssets.like,
                scale: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Image.asset(
                  AppAssets.comment,
                  scale: 3,
                ),
              ),
              Image.asset(
                AppAssets.share,
                scale: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}

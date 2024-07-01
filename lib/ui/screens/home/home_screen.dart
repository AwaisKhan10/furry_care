import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_users_data.dart';
import 'package:furry_care/ui/screens/home/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Column(
              children: [
                ///
                /// Header Container
                ///
                _header(),

                ///
                /// ListView Data
                ///
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: model.userdataList.length,
                  itemBuilder: (context, index) {
                    return index == 1
                        ? _yoursplanDetail()
                        : CustomUsersData(
                            usersData: model.userdataList[index],
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_header() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
    width: double.infinity,
    height: 117.h,
    decoration: BoxDecoration(color: accentColor, boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.25),
          offset: const Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4)
    ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Rishyanth",
              style: style14,
            ),
            Text(
              "Mumbai",
              style: style14,
            )
          ],
        ),
        Image.asset(
          AppAssets.notifications,
          scale: 4,
        ),
      ],
    ),
  );
}

///
/// What you need to plan for your pets?
///
_yoursplanDetail() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
    padding: EdgeInsets.all(16.sp),
    decoration: HomeSceenContainerdecoration,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What you need to plan for your pets?",
          style: style16.copyWith(color: blackColor),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "By Rishyanth | May 2024",
          style: style10.copyWith(color: blackColor),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "A beneficial and extensive routine is one of the best ways you can ensure that your pet is receiving all the care it needs day to day.......",
          style:
              style12.copyWith(color: blackColor, fontWeight: FontWeight.w300),
        ),
      ],
    ),
  );
}

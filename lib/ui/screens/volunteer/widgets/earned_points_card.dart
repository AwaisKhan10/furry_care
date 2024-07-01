import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';

class EarnedPointsCard extends StatelessWidget {
  const EarnedPointsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppAssets.img4,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alex M.',
                style: style14,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Points Earned: 50',
                style: style14,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Bagdes Earned',
                style: style14,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppAssets.badges3,
                    height: 32,
                    width: 32,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Image.asset(
                    AppAssets.badges2,
                    height: 32,
                    width: 32,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Image.asset(
                    AppAssets.badges1,
                    height: 32,
                    width: 32,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

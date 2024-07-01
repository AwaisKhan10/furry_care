import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:intl/intl.dart';

import '../volunteer_view_model.dart';

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('MM/dd/yyyy').format(event.time);

    return Container(
      padding: const EdgeInsets.fromLTRB(8, 0, 15, 16),
      height: 185,
      decoration: BoxDecoration(
          color: accentColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: style14,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(event.address),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppAssets.calender),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(formattedDate)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(AppAssets.time),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(formattedDate)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppAssets.following),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(AppAssets.share2),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(AppAssets.bookmark),
                SizedBox(height: 30.h),
                Image.asset(event.imgurl),
                SizedBox(height: 7.h),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: accentColor,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: greyColor)
                      ],
                      border: Border.all(color: borderColor),
                      borderRadius: BorderRadius.circular(15)),
                  child: GestureDetector(
                    child: Center(
                      child: Text(
                        'Catch up',
                        style: style14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

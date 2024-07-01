import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';
// import 'package:ustad/core/others/screen_utils.dart';

///
/// Adjust In Your Project these shimmer loading settings
///
class ListTranformImageShimmer extends StatelessWidget {
  const ListTranformImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: primaryColor,
      highlightColor: primaryColor,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // padding: EdgeInsets.only(right: 30),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            // elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: SizedBox(
              // height: MediaQuery.sizeOf(context).height * 0.1,
              width: MediaQuery.of(context).size.width * 0.35,
            ),
          );
        },
      ),
    );
  }
}

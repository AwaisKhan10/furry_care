import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

///
/// Adjust In Your Project these shimmer loading settings
///
class GridViewShimmer extends StatelessWidget {
  const GridViewShimmer({super.key});

  // GridViewShimmer({required this.itemCount});
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: primaryColor,
      highlightColor: primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            );
          },
        ),
      ),
    );
  }
}

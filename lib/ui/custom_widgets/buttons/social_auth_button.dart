// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/image_container.dart';

class SocialAuthButton extends StatelessWidget {
  final String? image;
  final onTap;
  const SocialAuthButton({super.key, this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 47.h,
          child: UnconstrainedBox(
            child: ImageContainer(assetImage: image, height: 39.h, width: 39.w),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD9D8D7), width: 1.5),
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}

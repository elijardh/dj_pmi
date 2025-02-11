import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class ProfileTypeCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final AssetGenImage image;

  const ProfileTypeCard({
    super.key,
    required this.image,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: allPadding(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: context.secondaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: context.bodyLarge.copyWith(
                fontSize: 14.sp,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            20.verticalSpace,
            image.image(
              height: 80.h,
              width: 80.w,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class DjExploreGenreSection extends StatelessWidget {
  const DjExploreGenreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Explore genres',
          style: context.titleLarge.copyWith(
            fontSize: 16.sp,
          ),
        ),
        20.verticalSpace,
        ...List.generate(
          10,
          (index) => DjExploreGenreSectionTile(),
        ),
      ],
    );
  }
}

class DjExploreGenreSectionTile extends StatelessWidget {
  const DjExploreGenreSectionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding(10),
      child: Row(
        children: [
          Container(
            height: 50.h,
            width: 50.h,
            padding: allPadding(20),
            decoration: BoxDecoration(
              color: context.secondaryColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Assets.svgs.musicIcon.svg(),
          ),
          20.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Afrobeats',
                style: context.bodyLarge.copyWith(
                  fontSize: 14.sp,
                  color: context.appColorsDark.highContrastForeground,
                ),
              ),
              10.verticalSpace,
              Text(
                '10,000,000 songs',
                style: context.bodySmall.copyWith(
                  fontSize: 12.sp,
                  color: context.appColorsDark.lowContrastForeground,
                ),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 50.h,
            width: 50.h,
            padding: allPadding(20),
            decoration: BoxDecoration(
              color: context.secondaryColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Assets.svgs.musicIcon.svg(height: 24.h, width: 24.h),
          ),
        ],
      ),
    );
  }
}

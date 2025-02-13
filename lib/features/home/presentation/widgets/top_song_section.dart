import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class TopSongSection extends StatelessWidget {
  const TopSongSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your top songs',
              style: context.titleLarge.copyWith(
                fontSize: 16.sp,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            Text(
              'Number of plays',
              style: context.bodyMedium.copyWith(
                fontSize: 14.sp,
                color: context.appColorsDark.lowContrastForeground,
              ),
            ),
          ],
        ),
        Divider(
          color: context.appColorsDark.lowContrastForeground.withAlpha(100),
        ),
        10.verticalSpace,
        ...List.generate(
          3,
          (index) => TopSongTile(),
        ),
      ],
    );
  }
}

class TopSongTile extends StatelessWidget {
  const TopSongTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding(10),
      child: Row(
        children: [
          Assets.pngs.topSongPlaceholder.image(
            height: 48.h,
            width: 48.h,
          ),
          10.horizontalSpace,
          Text(
            'Water',
            style: context.bodyLarge.copyWith(
              fontSize: 14.sp,
            ),
          ),
          Spacer(),
          Text(
            '400,000',
            style: context.bodyMedium.copyWith(
              fontSize: 12.sp,
              color: context.appColorsDark.lowContrastForeground,
            ),
          )
        ],
      ),
    );
  }
}

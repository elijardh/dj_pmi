import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

class SimilarTile extends StatelessWidget {
  const SimilarTile({super.key});

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Essence(feat. Tems)',
                style: context.bodyLarge.copyWith(
                  fontSize: 12.sp,
                ),
              ),
              Text(
                'Central Cee . 4:00',
                style: context.bodyMedium.copyWith(
                  fontSize: 10.sp,
                  color: context.appColorsDark.lowContrastForeground,
                ),
              )
            ],
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
    );
  }
}

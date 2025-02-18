import 'package:dj_pmi/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../common/shared/action_button.dart';

class MusicView extends StatelessWidget {
  const MusicView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        20.verticalSpace,
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Assets.pngs.musicPlayerPlaceholder.image(),
        ),
        20.verticalSpace,
        Text(
          'INDUSTRY BABY',
          style: context.headlineLarge.copyWith(
            fontSize: 20.sp,
          ),
        ),
        Text(
          'Lil Nas X',
          style: context.bodySmall.copyWith(
            fontSize: 12.sp,
          ),
        ),
        40.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButton(
              icon: Assets.svgs.downloadIcon,
              onTap: () {},
              title: 'Download',
            ),
            ActionButton(
              icon: Assets.svgs.favouriteIcon,
              onTap: () {},
              title: 'Favourite',
            ),
            ActionButton(
              icon: Assets.svgs.commentIcon,
              onTap: () {},
              title: 'Comment',
            ),
            ActionButton(
              icon: Assets.svgs.partyMixIcon,
              onTap: () {},
              title: 'Party Mix',
            ),
          ],
        ),
        30.verticalSpace,
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Slider(
              value: 5,
              min: 0,
              max: 100,
              secondaryTrackValue: 100,
              secondaryActiveColor:
                  context.appColorsDark.lowContrastForeground.withAlpha(100),
              activeColor: Colors.white,
              onChanged: (_) {},
            ),
          ),
        ),
        30.verticalSpace,
        Padding(
          padding: horizontalPadding(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                icon: Assets.svgs.shuffleIcon,
                onTap: () {},
              ),
              ActionButton(
                icon: Assets.svgs.skipBackwardIcon,
                onTap: () {},
              ),
              Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: context.appColorsDark.background,
                  size: 50,
                ),
              ),
              ActionButton(
                icon: Assets.svgs.skipForwardIcon,
                onTap: () {},
              ),
              ActionButton(
                icon: Assets.svgs.repeatIcon,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/common/utilties/custom_bottom_sheets.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DjRecentUploadSection extends StatelessWidget {
  const DjRecentUploadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Uploads',
              style: context.titleLarge.copyWith(
                fontSize: 16.sp,
              ),
            ),
            Text(
              'See All',
              style: context.titleLarge.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        10.verticalSpace,
        SizedBox(
          height: 150.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => RecentUploadCard(),
            ),
          ),
        )
      ],
    );
  }
}

class ArtistRecentUploadsSection extends StatefulWidget {
  const ArtistRecentUploadsSection({super.key});

  @override
  State<ArtistRecentUploadsSection> createState() =>
      _ArtistRecentUploadsSectionState();
}

class _ArtistRecentUploadsSectionState
    extends State<ArtistRecentUploadsSection> {
  bool isListView = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Recent Uploads',
              style: context.titleLarge.copyWith(
                fontSize: 16.sp,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => setState(() {
                isListView = true;
              }),
              child: Assets.svgs.listIcon.svg(
                colorFilter: ColorFilter.mode(
                  isListView
                      ? context.primaryColor
                      : context.appColorsDark.midContrastForeground,
                  BlendMode.srcIn,
                ),
              ),
            ),
            10.horizontalSpace,
            GestureDetector(
              onTap: () => setState(() {
                isListView = false;
              }),
              child: Assets.svgs.gridIcon.svg(
                colorFilter: ColorFilter.mode(
                  !isListView
                      ? context.primaryColor
                      : context.appColorsDark.midContrastForeground,
                  BlendMode.srcIn,
                ),
              ),
            )
          ],
        ),
        10.verticalSpace,
        Builder(
          builder: (context) {
            if (isListView) {
              return Column(
                children: List.generate(
                  5,
                  (index) => RecentUploadsTile(),
                ),
              );
            }
            return SizedBox(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.6,
                children: List.generate(
                  5,
                  (index) => RecentUploadCard(),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

class RecentUploadCard extends StatelessWidget {
  const RecentUploadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.music_player_screen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.pngs.topSongPlaceholder.image(
            height: 100.h,
            width: 100.h,
          ),
          5.verticalSpace,
          Text(
            'Essence(feat. Tems)',
            overflow: TextOverflow.ellipsis,
            style: context.bodyLarge.copyWith(
              fontSize: 14.sp,
            ),
          ),
          5.verticalSpace,
          Text(
            '4:00',
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

class RecentUploadsTile extends StatelessWidget {
  const RecentUploadsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomDraggableBottomSheetTitle(
        child: MusicPlayerBottomSheet(),
      ),
      child: Padding(
        padding: verticalPadding(10),
        child: Row(
          children: [
            Assets.pngs.topSongPlaceholder.image(
              height: 48.h,
              width: 48.h,
            ),
            10.horizontalSpace,
            Text(
              'Essence(feat. Tems)',
              style: context.bodyLarge.copyWith(
                fontSize: 14.sp,
              ),
            ),
            Spacer(),
            Text(
              '4:00',
              style: context.bodyMedium.copyWith(
                fontSize: 12.sp,
                color: context.appColorsDark.lowContrastForeground,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecentUploadsSection extends StatefulWidget {
  const RecentUploadsSection({super.key});

  @override
  State<RecentUploadsSection> createState() => _RecentUploadsSectionState();
}

class _RecentUploadsSectionState extends State<RecentUploadsSection> {
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
      onTap: () => context.push(Routes.music_player_screen),
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

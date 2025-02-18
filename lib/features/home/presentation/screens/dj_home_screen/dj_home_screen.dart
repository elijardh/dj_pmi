import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DjHomeScreen extends StatelessWidget {
  const DjHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DjHomeScreenContent();
  }
}

class DjHomeScreenContent extends StatelessWidget {
  const DjHomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            20.verticalSpace,
            Row(
              children: [
                Assets.pngs.splashScreenImage.image(width: 80.w, height: 37.h),
                Spacer(),
                Icon(Icons.search),
                20.horizontalSpace,
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFF0953),
                  ),
                  child: Center(
                    child: Text(
                      'C',
                      style: context.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            DjMusicCategorySection(),
            20.verticalSpace,
            DjRecentUploadSection(),
            20.verticalSpace,
            DjExploreGenreSection(),
          ],
        ),
      )),
    );
  }
}

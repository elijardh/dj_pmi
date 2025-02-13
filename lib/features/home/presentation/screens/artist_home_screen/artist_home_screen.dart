import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/home/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ArtistHomeScreen extends StatelessWidget {
  const ArtistHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ArtistActionScreenContent();
  }
}

class ArtistActionScreenContent extends StatelessWidget {
  const ArtistActionScreenContent({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Assets.pngs.splashScreenImage
                      .image(width: 80.w, height: 37.h),
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
              UploadSongCard(),
              20.verticalSpace,
              TopSongSection(),
              20.verticalSpace,
              RecentUploadsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

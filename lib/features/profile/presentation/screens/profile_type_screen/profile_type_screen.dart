import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/common/models/models.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/profile/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileTypeScreen extends StatelessWidget {
  const ProfileTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileTypeScreenContent();
  }
}

class ProfileTypeScreenContent extends StatelessWidget {
  const ProfileTypeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Tell us what you do',
              style: context.titleLarge.copyWith(
                fontSize: 30.sp,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            20.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: ProfileTypeCard(
                      image: Assets.pngs.artistImage,
                      onTap: () => context.push(
                            Routes.create_profile_screen,
                            extra: ProfileType.Artist,
                          ),
                      title: 'Artist'),
                ),
                10.horizontalSpace,
                Expanded(
                  child: ProfileTypeCard(
                    image: Assets.pngs.musicLabelImage,
                    onTap: () => context.push(
                      Routes.create_profile_screen,
                      extra: ProfileType.DJ,
                    ),
                    title: 'Music Label',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

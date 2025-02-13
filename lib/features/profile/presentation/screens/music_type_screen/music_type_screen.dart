import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/profile/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MusicTypeScreen extends StatelessWidget {
  const MusicTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MusicTypeScreenContent();
  }
}

class MusicTypeScreenContent extends StatelessWidget {
  const MusicTypeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: IntrinsicHeight(
        child: Padding(
          padding: allPadding(20),
          child: Button(
            onPressed: () => context.push(Routes.dashboard_screen),
            text: 'Save Selection',
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: horizontalPadding(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'What kind of music do you make?',
              style: context.headlineLarge.copyWith(
                fontSize: 30.sp,
                color: context.appColorsDark.highContrastForeground,
              ),
            ),
            Text(
              'Select at least three music you make',
              style: context.bodySmall.copyWith(
                fontSize: 14.sp,
                color: context.appColorsDark.lowContrastForeground,
              ),
            ),
            10.verticalSpace,
            InputField(
              placeHolder: 'Try searching for names...',
              prefix: Transform.scale(
                  scale: 0.4,
                  child: Assets.svgs.searchIcon.svg(
                    height: 13.h,
                    width: 13.w,
                  )),
            ),
            10.verticalSpace,
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: List.generate(
                30,
                (index) => MusicCategoryButton(
                  selected: index % 2 == 0,
                  title: 'Afro Pop',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

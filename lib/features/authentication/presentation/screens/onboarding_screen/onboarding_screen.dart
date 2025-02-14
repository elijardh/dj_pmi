import 'package:dj_pmi/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreenContent();
  }
}

class OnboardingScreenContent extends StatelessWidget {
  const OnboardingScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Assets.pngs.onboardingScreenBackground.image(
                fit: BoxFit.cover,
              )),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0,
                  0.7,
                ],
                colors: [
                  Colors.transparent,
                  context.appColorsDark.background,
                ],
              ),
            ),
          ),
          Padding(
            padding: horizontalPadding(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                50.verticalSpace,
                AnimatedWrapper(
                  top: true,
                  child: Assets.pngs.splashScreenImage.image(
                    width: 150.w,
                    height: 70.h,
                  ),
                ),
                Spacer(),
                AnimatedWrapper(
                  top: false,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Bringing Artists and DJs together one track at a time.',
                        style: context.headlineLarge.copyWith(
                          fontSize: 27.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      30.verticalSpace,
                      Button(
                        onPressed: () => context.push(
                          Routes.artist_action_screen,
                        ),
                        text: 'Create artist profile',
                        buttonColor: Colors.white,
                        buttonNameColor: context.appColorsDark.background,
                      ),
                      10.verticalSpace,
                      Button(
                        onPressed: () => context.push(
                          Routes.dj_action_screen,
                        ),
                        text: 'Create DJ profile',
                        buttonNameColor: context.appColorsDark.background,
                        buttonColor: Colors.white,
                      ),
                      30.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

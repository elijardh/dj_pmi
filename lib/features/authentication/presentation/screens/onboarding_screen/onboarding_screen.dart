import 'package:dj_pmi/common/extensions/build_context.dart';
import 'package:dj_pmi/common/gen/assets.gen.dart';
import 'package:dj_pmi/common/shared/shared.dart';
import 'package:dj_pmi/common/utilties/utilities.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreenContent();
  }
}

class OnboardingScreenContent extends StatefulWidget {
  const OnboardingScreenContent({super.key});

  @override
  State<OnboardingScreenContent> createState() =>
      _OnboardingScreenContentState();
}

class _OnboardingScreenContentState extends State<OnboardingScreenContent> {
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
                  0.8,
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
                        style: context.headlineLarge,
                        textAlign: TextAlign.center,
                      ),
                      30.verticalSpace,
                      Button(
                        onPressed: () {},
                        text: 'Create artist profile',
                        buttonColor: Colors.white,
                        buttonNameColor: context.appColorsDark.background,
                      ),
                      10.verticalSpace,
                      Button(
                        onPressed: () {},
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

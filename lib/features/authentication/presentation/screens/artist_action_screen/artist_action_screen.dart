import 'package:dj_pmi/common/common.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:dj_pmi/features/authentication/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArtistActionScreen extends StatelessWidget {
  const ArtistActionScreen({super.key});

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
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Assets.pngs.artistActionScreenBackground.image(
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
                        'For Artists Who \nMake Music.',
                        style: context.headlineLarge.copyWith(
                          fontSize: 27.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      30.verticalSpace,
                      Button(
                        onPressed: () {},
                        text: 'Create account',
                        buttonColor: context.primaryColor,
                      ),
                      30.verticalSpace,
                      Center(
                        child: Button(
                          onPressed: () => context.push(Routes.sign_in_screen),
                          text: 'Login',
                          buttonNameColor: Colors.white,
                          textButton: true,
                        ),
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

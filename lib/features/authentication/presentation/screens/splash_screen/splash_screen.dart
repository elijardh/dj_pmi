import 'package:dj_pmi/common/gen/assets.gen.dart';
import 'package:dj_pmi/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreenContent();
  }
}

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        if (mounted) {
          context.push(Routes.onboarding_screen);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => context.push(Routes.onboarding_screen),
        child: Center(
          child: Assets.pngs.splashScreenImage.image(
            height: 70.h,
            width: 150.w,
          ),
        ),
      ),
    );
  }
}

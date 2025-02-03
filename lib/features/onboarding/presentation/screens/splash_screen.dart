import 'package:dj_pmi/common/gen/assets.gen.dart';
import 'package:dj_pmi/features/onboarding/presentation/viewmodels/onboarding_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingViewmodel(),
      builder: (context, child) => const SplashScreenContent(),
    );
  }
}

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Assets.illustrations.splashScreenImage.image()),
    );
  }
}

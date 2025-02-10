// ignore_for_file: non_constant_identifier_names

import 'package:bot_toast/bot_toast.dart';
import 'package:dj_pmi/features/features.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  observers: [BotToastNavigatorObserver()],
  initialLocation: '/',
  routes: [
    GoRoute(
      path: Routes.splash_screen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.onboarding_screen,
      builder: (context, state) => OnboardingScreen(),
    ),
  ],
);

abstract class Routes {
  static String splash_screen = '/';
  static String onboarding_screen = '/onboarding_screen';
}

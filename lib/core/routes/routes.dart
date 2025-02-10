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
    GoRoute(
      path: Routes.artist_action_screen,
      builder: (context, state) => ArtistActionScreen(),
    ),
    GoRoute(
      path: Routes.dj_action_screen,
      builder: (context, state) => DjActionScreen(),
    ),
    GoRoute(
      path: Routes.sign_in_screen,
      builder: (context, state) => SignInScreen(),
    ),
  ],
);

abstract class Routes {
  static String splash_screen = '/';
  static String onboarding_screen = '/onboarding_screen';
  static String artist_action_screen = '/artist_action_screen';
  static String dj_action_screen = '/dj_action_screen';
  static String sign_in_screen = '/sign_in_screen';
}

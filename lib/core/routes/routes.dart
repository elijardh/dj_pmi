// ignore_for_file: non_constant_identifier_names

import 'package:bot_toast/bot_toast.dart';
import 'package:dj_pmi/common/models/models.dart';
import 'package:dj_pmi/common/shared/shared.dart';
import 'package:dj_pmi/features/features.dart';
import 'package:dj_pmi/features/profile/domain/models/profile_type.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final getIt = GetIt.instance;

final routes = GoRouter(
  observers: [BotToastNavigatorObserver()],
  navigatorKey: getIt<GlobalKey<NavigatorState>>(),
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
    GoRoute(
      path: Routes.otp_view,
      builder: (context, state) {
        var arg = state.extra;
        return OtpView(
          otpViewArguement: arg as OtpViewArguement,
        );
      },
    ),
    GoRoute(
      path: Routes.create_password_screen,
      builder: (context, state) {
        return CreatePasswordScreen();
      },
    ),
    GoRoute(
      path: Routes.sign_up_screen,
      builder: (context, state) {
        return SignUpScreen();
      },
    ),
    GoRoute(
      path: Routes.profile_type_screen,
      builder: (context, state) {
        return ProfileTypeScreen();
      },
    ),
    GoRoute(
      path: Routes.dashboard_screen,
      builder: (context, state) {
        return DashboardScreen();
      },
    ),
    GoRoute(
      path: Routes.create_profile_screen,
      builder: (context, state) {
        final args = state.extra;
        return CreateProfileScreen(
          profileType: args as ProfileType,
        );
      },
    ),
    GoRoute(
      path: Routes.music_type_screen,
      builder: (context, state) => MusicTypeScreen(),
    ),
  ],
);

abstract class Routes {
  static String splash_screen = '/';
  static String onboarding_screen = '/onboarding_screen';
  static String artist_action_screen = '/artist_action_screen';
  static String dj_action_screen = '/dj_action_screen';
  static String sign_in_screen = '/sign_in_screen';
  static String sign_up_screen = '/sign_up_screen';
  static String otp_view = '/otp_view';
  static String create_password_screen = '/create_password_screen';
  static String profile_type_screen = '/profile_type_screen';
  static String create_profile_screen = '/create_profile_screen';
  static String music_type_screen = '/music_type_screen';
  static String dashboard_screen = '/dashboard_screen';
}

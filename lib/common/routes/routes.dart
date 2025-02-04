import 'package:bot_toast/bot_toast.dart';
import 'package:dj_pmi/features/features.dart';
import 'package:dj_pmi/internal/common_constants.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  observers: [BotToastNavigatorObserver()],
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
  ],
);

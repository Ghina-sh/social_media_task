import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_task/presentation/pages/home/view/home_view.dart';
import 'package:social_media_task/presentation/pages/story/view/story_view.dart';

class AppRoutes {
  static final navKey = GlobalKey<NavigatorState>();

  static const String homeRoute = '/';
  static const String storyRoute = '/storyRoute';

  static final router = GoRouter(
    navigatorKey: navKey,
    initialLocation: homeRoute,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: homeRoute,
        name: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: storyRoute,
        name: storyRoute,
        builder: (context, state) => StoryView(
          initIndex: state.extra as int,
        ),
      ),
    ],
  );
}

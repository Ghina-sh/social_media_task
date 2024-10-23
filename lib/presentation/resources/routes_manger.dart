import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_task/presentation/pages/home/getx/home_controller.dart';
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
        builder: (context, state) {
          Get.lazyPut(() => HomeController());
          return const HomeView();
        },
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

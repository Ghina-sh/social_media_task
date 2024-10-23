import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_task/presentation/resources/routes_manger.dart';
import 'package:social_media_task/presentation/resources/theme_manger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      // DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Social Media Task",
      routerConfig: AppRoutes.router,
      theme: getApplicationTheme(context),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/styles_manger.dart';

import 'font_manger.dart';

ThemeData getApplicationTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      fontFamily: FontConstants.gloryFamily,
      scaffoldBackgroundColor: ColorManager.transparent,
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorManager.transparent,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: ColorManager.white,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: ColorManager.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      textTheme: TextTheme(
        labelMedium: getMediumStyle(
          color: ColorManager.fontBlack,
          fontSize: AppSize.s16(context),
        ),
        labelLarge: getSemiBoldStyle(
          color: ColorManager.fontBlack,
          fontSize: AppSize.s18(context),
        ),
        labelSmall: getRegularStyle(
          color: ColorManager.fontBlack,
          fontSize: AppSize.s12(context),
        ),
        headlineMedium: getRegularStyle(
          color: ColorManager.fontBlack.withOpacity(.6),
          fontSize: AppSize.s16(context),
        ),
        bodyLarge: getSemiBoldStyle(
          color: ColorManager.white,
          fontSize: AppSize.s18(context),
        ),
        displayMedium: getRegularStyle(
          color: ColorManager.purpleAccent,
          fontSize: AppSize.s16(context),
        ),
        titleMedium: getRegularStyle(
          color: ColorManager.black,
          fontSize: AppSize.s16(context),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: ColorManager.black.withOpacity(.6),
      ),
    );

import 'package:flutter/material.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: const BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 76.21,
            height: 49,
            child: Center(
              child: AppIcon(
                icon: IconsAssets.home,
              ),
            ),
          ),
          SizedBox(
            width: 76.21,
            height: 49,
            child: Center(
              child: AppIcon(
                icon: IconsAssets.explore,
                color: ColorManager.fontBlack,
              ),
            ),
          ),
          SizedBox(
            width: 76.21,
            height: 49,
            child: Center(
              child: AppIcon(
                icon: IconsAssets.user,
                color: ColorManager.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

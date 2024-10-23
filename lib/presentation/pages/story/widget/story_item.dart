import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/domain/models/home_moduls/story_model.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';

class StoryItem extends StatelessWidget {
  final int index;
  const StoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            height: 1.h(context),
            width: 1.w(context),
            fit: BoxFit.cover,
            StoryModel.stories[index].storyImage,
          ),
        ),
        Container(
          width: 1.w(context),
          height: 1.h(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorManager.black.withOpacity(.5),
                ColorManager.transparent,
              ],
              stops: const [.02, .2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        const Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.0, vertical: 50),
            child: AppIcon(
              icon: IconsAssets.favorite1,
              color: ColorManager.white,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 40, vertical: .21.h(context)),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppIcon(
                    icon: IconsAssets.tag,
                    color: ColorManager.purpleAccent,
                  ),
                  5.horizontalSpace(),
                  Text(
                    AppStrings.medication,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: AppSize.s14(context),
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

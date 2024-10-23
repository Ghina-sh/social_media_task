import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/domain/models/home_moduls/story_model.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/routes_manger.dart';

import 'story_circle_widget.dart';

class StoryList extends StatelessWidget {
  const StoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      height: 66.5,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: const EdgeInsets.symmetric(vertical: 9),
      margin: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        color: ColorManager.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(48),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: ColorManager.transparent,
          ),
        ],
      ),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => GoRouter.of(context).pushNamed(
                  AppRoutes.storyRoute,
                  extra: index,
                ),
            child: StoryCircleWidget(
                image: StoryModel.stories[index].profileImage)),
        itemCount: StoryModel.stories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

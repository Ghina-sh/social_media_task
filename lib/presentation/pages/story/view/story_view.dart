import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/domain/models/home_moduls/story_model.dart';
import 'package:social_media_task/presentation/pages/story/widget/story_item.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';
import 'package:social_media_task/presentation/widgets/background_widget.dart';
import 'package:story_time/story_page_view/story_page_view.dart';

class StoryView extends StatelessWidget {
  final int initIndex;
  const StoryView({super.key, required this.initIndex});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      body: Stack(
        children: [
          StoryPageView(
            backgroundColor: Colors.transparent,
            initialPage: initIndex,
            indicatorDuration: const Duration(seconds: 15),
            indicatorPadding: const EdgeInsets.symmetric(vertical: 60),
            onPageLimitReached: () => GoRouter.of(context).pop(),
            itemBuilder: (context, pageIndex, storyIndex) {
              return StoryItem(index: pageIndex);
            },
            storyLength: (pageIndex) => 1,
            gestureItemBuilder: (context, pageIndex, storyIndex) {
              return const SizedBox();
            },
            pageLength: StoryModel.stories.length,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 19, left: 19),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => GoRouter.of(context).pop(),
                  child: const AppIcon(
                    icon: IconsAssets.backButton,
                  ),
                ),
                10.horizontalSpace(),
                Text(
                  "Mariano Di Vaio",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: AppSize.s18(context),
                      ),
                ),
                10.horizontalSpace(),
                Text(
                  "17m",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: AppSize.s16(context),
                      ),
                ),
                const Spacer(),
                const AppIcon(
                  icon: IconsAssets.download,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

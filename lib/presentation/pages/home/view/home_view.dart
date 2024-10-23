import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/domain/models/home_moduls/post_model.dart';
import 'package:social_media_task/presentation/pages/home/widget/home_bottom_nav.dart';
import 'package:social_media_task/presentation/pages/home/widget/post_widget.dart';
import 'package:social_media_task/presentation/pages/home/widget/story_list.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';
import 'package:social_media_task/presentation/widgets/background_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      appBar: AppBar(
        leading: Row(
          children: [
            24.horizontalSpace(),
            const AppIcon(
              icon: IconsAssets.notification,
            ),
          ],
        ),
        title: const AppIcon(icon: IconsAssets.socially),
      ),
      bottomNavigationBar: const HomeBottomNav(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
        child: Column(
          children: [
            const StoryList(),
            12.verticalSpace(),
            ...List.generate(
              PostModel.posts.length,
              (index) => PostWidget(
                model: PostModel.posts[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

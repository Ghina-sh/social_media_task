import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/pages/home/widget/comment_bottom_sheet.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';

class PostBottomBar extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  const PostBottomBar(
      {super.key, required this.likeCount, required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppIcon(
          icon: IconsAssets.favorite,
        ),
        6.5.horizontalSpace(),
        Text(
          "$likeCount",
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                fontSize: AppSize.s14(context),
              ),
        ),
        9.27.horizontalSpace(),
        InkWell(
          onTap: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.viewInsetsOf(context).bottom),
                child: const CommentBottomSheet()),
          ),
          child: Row(
            children: [
              const AppIcon(
                icon: IconsAssets.comment,
              ),
              6.5.horizontalSpace(),
              Text(
                "$commentCount",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: AppSize.s14(context),
                    ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const AppIcon(
          icon: IconsAssets.bookmark,
        ),
      ],
    );
  }
}

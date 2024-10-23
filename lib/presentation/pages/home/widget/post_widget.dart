import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/pages/home/widget/post_bottom_bar.dart';
import 'package:social_media_task/presentation/pages/home/widget/post_header.dart';
import 'package:social_media_task/presentation/pages/home/widget/post_images_page_view.dart';
import 'package:social_media_task/presentation/pages/home/widget/post_three_images.dart';
import 'package:social_media_task/presentation/pages/home/widget/tag_widget.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';

import '../../../../data/home/models/home_moduls/post_model.dart';

class PostWidget extends StatelessWidget {
  final PostModel model;
  const PostWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        color: ColorManager.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(2, 4),
            blurRadius: 9,
            spreadRadius: 0,
            color: Colors.black.withOpacity(.25),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ColorManager.black.withOpacity(.6),
          width: 1,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Column(
        children: [
          PostHeader(
            image: model.profileImage,
            time: model.time,
            userName: model.userName,
            tag: model.taggedUser,
          ),
          12.verticalSpace(),
          if (model.images != null) ...[
            if (model.images!.length > 3)
              PostImagesPageView(images: model.images!)
            else
              PostThreeImages(images: model.images!),
            10.verticalSpace(),
          ],
          if (model.description != null) ...[
            LinkifyText(
              model.description!,
              linkStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: AppSize.s16(context),
                  ),
              textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: AppSize.s14(context),
                  ),
              linkTypes: const [LinkType.userTag],
            ),
            if (model.tag == null) ...[
              8.verticalSpace(),
              const Divider(height: 0),
              15.verticalSpace(),
            ],
          ],
          if (model.tag != null) ...[
            10.verticalSpace(),
            TagWidget(tag: model.tag!),
            10.verticalSpace(),
          ],
          PostBottomBar(
            commentCount: model.commentCount,
            likeCount: model.likeCount,
          ),
        ],
      ),
    );
  }
}

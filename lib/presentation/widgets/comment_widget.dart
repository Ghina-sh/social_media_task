import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';

import 'reaction_widget.dart';

class CommentWidget extends StatelessWidget {
  final Function(Reaction<String>?) onReactionChanged;
  final bool isReply;

  const CommentWidget(
      {required this.onReactionChanged, this.isReply = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageAssets.person1),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        10.horizontalSpace(),
        Flexible(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorManager.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ghina Sharaf',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: AppSize.s16(context),
                          ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: AppSize.s14(context),
                          ),
                    )
                  ],
                ),
              ),
              5.verticalSpace(),
              Row(
                children: [
                  Text(
                    '4h',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: AppSize.s14(context),
                        ),
                  ),
                  10.horizontalSpace(),
                  ReactionWidget(onReactionChanged: onReactionChanged),
                  if (!isReply) ...[
                    10.horizontalSpace(),
                    Text(
                      AppStrings.reply,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            fontSize: AppSize.s14(context),
                          ),
                    ),
                    20.horizontalSpace(),
                  ],
                ],
              ),
              10.verticalSpace(),
            ],
          ),
        ),
      ],
    );
  }
}

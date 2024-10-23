import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';

class PostHeader extends StatelessWidget {
  final String image;
  final String userName;
  final String time;
  final String? tag;
  const PostHeader(
      {super.key,
      required this.image,
      required this.userName,
      required this.time,
      this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 23.17,
          height: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        8.34.horizontalSpace(),
        Text(
          userName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        4.horizontalSpace(),
        if (tag != null)
          Text(
            "${AppStrings.withTag} $tag",
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: AppSize.s14(context),
                ),
          ),
        const Spacer(),
        Text(
          time,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: AppSize.s14(context),
              ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/widgets/app_icon.dart';

class TagItem extends StatelessWidget {
  final String tag;
  final bool isForBottomSheet;
  const TagItem({
    super.key,
    required this.tag,
    this.isForBottomSheet = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        end: isForBottomSheet ? 0 : 10,
        bottom: isForBottomSheet ? 10 : 0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: isForBottomSheet ? 16 : 8,
        vertical: isForBottomSheet ? 8 : 4,
      ),
      decoration: BoxDecoration(
        color: ColorManager.grey,
        borderRadius: BorderRadius.circular(isForBottomSheet ? 10 : 20),
      ),
      child: Row(
        children: [
          const AppIcon(
            icon: IconsAssets.tag,
          ),
          5.horizontalSpace(),
          Text(
            tag,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  fontSize: isForBottomSheet
                      ? AppSize.s18(context)
                      : AppSize.s14(context),
                ),
          ),
        ],
      ),
    );
  }
}

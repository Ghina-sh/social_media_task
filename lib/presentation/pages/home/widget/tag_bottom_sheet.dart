import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/pages/home/widget/tag_item.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';

class TagBottomSheet extends StatelessWidget {
  final List<String> tags;
  const TagBottomSheet({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: const BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          tags.length,
          (index) => TagItem(
            tag: tags[index],
            isForBottomSheet: true,
          ),
        ),
      ),
    );
  }
}

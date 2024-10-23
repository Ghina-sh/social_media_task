import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:social_media_task/domain/models/home_moduls/tree_node.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';

class CommentWithReply extends StatelessWidget {
  final TreeController<MyTreeNode> controller;
  final EdgeInsetsGeometry? padding;
  final bool withScroll;

  const CommentWithReply({
    required this.controller,
    this.padding,
    this.withScroll = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTreeView<MyTreeNode>(
      treeController: controller,
      padding: padding,
      physics: withScroll ? null : const NeverScrollableScrollPhysics(),
      shrinkWrap: withScroll ? false : true,
      nodeBuilder: (BuildContext context, TreeEntry<MyTreeNode> entry) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TreeIndentation(
              entry: entry,
              child: entry.node.title,
            ),
            if (entry.hasChildren)
              GestureDetector(
                onTap: () => controller.toggleExpansion(entry.node),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 50,
                    bottom: 15,
                  ),
                  child: Text(
                    entry.isExpanded
                        ? AppStrings.showLess
                        : AppStrings.showMoreReply,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: AppSize.s16(context),
                        ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_task/presentation/pages/home/widget/tag_bottom_sheet.dart';

import 'other_tag_item.dart';
import 'tag_item.dart';

class TagWidget extends StatelessWidget {
  final List<String> tag;
  const TagWidget({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        tag.length > 3 ? 4 : tag.length,
        (index) {
          if (index == 3) {
            return GestureDetector(
                onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => TagBottomSheet(
                        tags: tag,
                      ),
                    ),
                child: OtherTagItem(otherTag: tag.length - 3));
          }
          return TagItem(tag: tag[index]);
        },
      ),
    );
  }
}

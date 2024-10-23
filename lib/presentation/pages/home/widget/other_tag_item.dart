import 'package:flutter/material.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';

class OtherTagItem extends StatelessWidget {
  final int otherTag;
  const OtherTagItem({super.key, required this.otherTag});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 29,
          height: 29,
          decoration: BoxDecoration(
            color: ColorManager.grey,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 1),
                blurRadius: 6,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
        ),
        PositionedDirectional(
          start: 10,
          child: Container(
            width: 29,
            height: 29,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(.1),
                ),
              ],
            ),
          ),
        ),
        PositionedDirectional(
          start: 20,
          child: Container(
            width: 29,
            height: 29,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(.1),
                ),
              ],
            ),
            child: Text(
              "+$otherTag",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: AppSize.s14(context),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';

class StoryCircleWidget extends StatelessWidget {
  final String image;
  const StoryCircleWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 57.5,
      height: 57.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: ColorManager.white,
          width: 2,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';
import 'package:social_media_task/presentation/resources/font_manger.dart';

class SuffixButtonForFormFiled extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const SuffixButtonForFormFiled({
    required this.title,
    this.onTap,
    this.child,
    this.padding,
    this.margin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin ??
            const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        decoration: BoxDecoration(
          color: ColorManager.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            child ??
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: AppSize.s16(context),
                      ),
                ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';

class PostImagesPageView extends StatefulWidget {
  final List<String> images;
  const PostImagesPageView({super.key, required this.images});

  @override
  State<PostImagesPageView> createState() => _PostImagesPageViewState();
}

class _PostImagesPageViewState extends State<PostImagesPageView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      height: 366,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.images[index]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
            itemCount: widget.images.length,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SmoothPageIndicator(
                controller: pageController,
                count: widget.images.length,
                effect: SlideEffect(
                  dotWidth: 5.5,
                  dotHeight: 5.5,
                  spacing: 4.5,
                  dotColor: ColorManager.white.withOpacity(.5),
                  activeDotColor: ColorManager.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

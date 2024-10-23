import 'package:flutter/cupertino.dart';
import 'package:social_media_task/app/extensions.dart';

class PostThreeImages extends StatelessWidget {
  final List<String> images;
  const PostThreeImages({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 328.19,
          width: .5.w(context) - 5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images[0]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        5.horizontalSpace(),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 161.41,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[1]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              5.verticalSpace(),
              Container(
                height: 161.41,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[2]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_task/app/extensions.dart';
import 'package:social_media_task/presentation/resources/color_manger.dart';

class BackgroundWidget extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  const BackgroundWidget({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 1.w(context),
          height: 1.h(context),
          decoration: BoxDecoration(
            gradient: ColorManager.backgroundColor,
          ),
        ),
        Scaffold(
          appBar: appBar,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
        )
      ],
    );
  }
}

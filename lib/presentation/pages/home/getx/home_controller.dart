import 'package:get/get.dart';
import 'package:social_media_task/data/home/models/home_moduls/post_model.dart';

import '../../../../app/dependency_injection.dart';
import '../../../../data/home/home_repository.dart';
import '../../../resources/assets_manger.dart';
import '../../../resources/string_manger.dart';

class HomeController extends GetxController {
  BaseHomeRepository basePostRepository = instance();
  List<PostModel> posts = [
    PostModel(
      profileImage: ImageAssets.kylieJenner,
      userName: "Kylie Jenner",
      taggedUser: "Zoe Sugg",
      description:
          "Stopped by @zoesugg today with goosey girl to see @kyliecosmetics & @kylieskin 💕 wow what a dream!!!!!!!! It’s the best experience we have!",
      time: "2 d ago",
      likeCount: 1320,
      commentCount: 23,
    ),
    PostModel(
      profileImage: ImageAssets.alexStrohl,
      userName: "Alex Strohl",
      time: "1w ago",
      description:
          "This is one of the best experiences that I’ve ever had in my life! the mountain view here is emazing.",
      images: [
        ImageAssets.nature,
        ImageAssets.nature1,
        ImageAssets.nature,
        ImageAssets.nature1,
        ImageAssets.nature,
        ImageAssets.nature1,
      ],
      likeCount: 420,
      commentCount: 13,
      tag: [
        AppStrings.alberta,
        AppStrings.cold,
        AppStrings.medication,
        AppStrings.fun,
        AppStrings.explore,
        AppStrings.nature,
      ],
    ),
    PostModel(
      profileImage: ImageAssets.andreAlexander,
      userName: "André Alexander",
      time: "1h ago",
      images: [
        ImageAssets.nature1,
        ImageAssets.nature,
        ImageAssets.nature1,
      ],
      likeCount: 656,
      commentCount: 128,
    ),
  ];

  getPosts() async {
    (await basePostRepository.getPosts())
        .fold((failure) => {}, (posts) => this.posts = posts.posts);
  }

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }
}

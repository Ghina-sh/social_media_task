import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';

class PostModel {
  final String profileImage;
  final String userName;
  final String? taggedUser;
  final String time;
  final String? description;
  final List<String>? images;
  final List<String>? tag;
  final int likeCount;
  final int commentCount;

  PostModel({
    required this.profileImage,
    required this.userName,
    this.taggedUser,
    required this.time,
    this.description,
    this.images,
    this.tag,
    required this.likeCount,
    required this.commentCount,
  });

  static List<PostModel> posts = [
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
}

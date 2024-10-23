import 'package:social_media_task/presentation/resources/assets_manger.dart';

class StoryModel {
  final String profileImage;
  final String storyImage;

  StoryModel({
    required this.profileImage,
    required this.storyImage,
  });

  static List<StoryModel> stories = [
    StoryModel(
      profileImage: ImageAssets.person1,
      storyImage: ImageAssets.nature,
    ),
    StoryModel(
      profileImage: ImageAssets.person2,
      storyImage: ImageAssets.nature1,
    ),
    StoryModel(
      profileImage: ImageAssets.person3,
      storyImage: ImageAssets.nature,
    ),
    StoryModel(
      profileImage: ImageAssets.person4,
      storyImage: ImageAssets.nature1,
    ),
    StoryModel(
      profileImage: ImageAssets.person5,
      storyImage: ImageAssets.nature,
    ),
    StoryModel(
      profileImage: ImageAssets.person6,
      storyImage: ImageAssets.nature1,
    ),
    StoryModel(
      profileImage: ImageAssets.person7,
      storyImage: ImageAssets.nature,
    ),
  ];
}

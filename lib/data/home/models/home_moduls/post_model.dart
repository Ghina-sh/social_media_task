import 'package:social_media_task/presentation/resources/assets_manger.dart';
import 'package:social_media_task/presentation/resources/string_manger.dart';

class PostsModel {
  List<PostModel> posts;

  PostsModel({required this.posts});

  factory PostsModel.fromJson(List<dynamic> json) {
    List<PostModel> all = [];
    for (var element in (json)) {
      all.add(PostModel.fromJson(element as Map<String, dynamic>));
    }

    return PostsModel(posts: all);
  }
}

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

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      profileImage: json['profileImage'],
      userName: json['userName'],
      taggedUser: json['taggedUser'],
      time: json['time'],
      description: json['description'],
      images: List<String>.from(json['images'] ?? []),
      tag: List<String>.from(json['tag'] ?? []),
      likeCount: json['likeCount'],
      commentCount: json['commentCount'],
    );
  }
}

import 'package:hive_flutter/hive_flutter.dart';

part 'post_model.g.dart';

@HiveType(typeId: 1)
class PostsModel {
  @HiveField(0)
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

@HiveType(typeId: 2)
class PostModel {
  @HiveField(0)
  final String profileImage;
  @HiveField(1)
  final String userName;
  @HiveField(2)
  final String? taggedUser;
  @HiveField(3)
  final String time;
  @HiveField(4)
  final String? description;
  @HiveField(5)
  final List<String>? images;
  @HiveField(6)
  final List<String>? tag;
  @HiveField(7)
  final int likeCount;
  @HiveField(8)
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsModelAdapter extends TypeAdapter<PostsModel> {
  @override
  final int typeId = 1;

  @override
  PostsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsModel(
      posts: (fields[0] as List).cast<PostModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.posts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PostModelAdapter extends TypeAdapter<PostModel> {
  @override
  final int typeId = 2;

  @override
  PostModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostModel(
      profileImage: fields[0] as String,
      userName: fields[1] as String,
      taggedUser: fields[2] as String?,
      time: fields[3] as String,
      description: fields[4] as String?,
      images: (fields[5] as List?)?.cast<String>(),
      tag: (fields[6] as List?)?.cast<String>(),
      likeCount: fields[7] as int,
      commentCount: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PostModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.profileImage)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.taggedUser)
      ..writeByte(3)
      ..write(obj.time)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.images)
      ..writeByte(6)
      ..write(obj.tag)
      ..writeByte(7)
      ..write(obj.likeCount)
      ..writeByte(8)
      ..write(obj.commentCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

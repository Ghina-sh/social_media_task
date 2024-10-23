import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';
//flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  late  int? status;

  @JsonKey(name: 'message', defaultValue: '')
  final String? message;

  @JsonKey(name: 'data')
  final T? data;

  BaseResponse({
    required this.message,
     this.status,
    this.data,
  });

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson(json, fromJsonT);
}

import 'package:json_annotation/json_annotation.dart';

import '../../utils/enum.dart';

part 'pagination_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)

class BasePaginationModel<T> {
  final List<T> data;
  int total;
  @JsonKey(name: 'current_page')
  int currentPage;
  //int limit;
  @JsonKey(name: "last_page")
  int lastPage;
  PaginationTypes? paginationType;

  BasePaginationModel({
    required this.total,
    required this.data,
    required this.lastPage,
    required this.currentPage,
   // required this.limit
  });

  factory BasePaginationModel.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BasePaginationModelFromJson(json, fromJsonT);
}

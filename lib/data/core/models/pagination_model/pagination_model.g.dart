// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasePaginationModel<T> _$BasePaginationModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BasePaginationModel<T>(
      total: json['total'] as int,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      lastPage: json['last_page'] as int,
      currentPage: json['current_page'] as int,
    )..paginationType =
        $enumDecodeNullable(_$PaginationTypesEnumMap, json['paginationType']);

Map<String, dynamic> _$BasePaginationModelToJson<T>(
  BasePaginationModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'total': instance.total,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'paginationType': _$PaginationTypesEnumMap[instance.paginationType],
    };

const _$PaginationTypesEnumMap = {
  PaginationTypes.type1: 'type1',
};

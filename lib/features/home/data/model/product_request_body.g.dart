// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestBody _$ProductRequestBodyFromJson(Map<String, dynamic> json) =>
    ProductRequestBody(
      skip: (json['skip'] as num?)?.toInt(),
      search: json['search'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$ProductRequestBodyToJson(ProductRequestBody instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'search': instance.search,
      'category': instance.category,
    };

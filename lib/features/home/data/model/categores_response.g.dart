// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categores_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoresResponse _$CategoresResponseFromJson(Map<String, dynamic> json) =>
    CategoresResponse(
      list: (json['list'] as List<dynamic>)
          .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoresResponseToJson(CategoresResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

ListElement _$ListElementFromJson(Map<String, dynamic> json) => ListElement(
      id: json['_id'] as String,
      name: json['name'] as String,
      products:
          (json['products'] as List<dynamic>).map((e) => e as String).toList(),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$ListElementToJson(ListElement instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'products': instance.products,
      '__v': instance.v,
    };




import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
    @JsonKey(name: "list")
    List<ListElement> list;

    ProductResponse({
        required this.list,
    });

    factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}

@JsonSerializable()
class ListElement {
    @JsonKey(name: "_id")
    String id;
    @JsonKey(name: "title")
    String title;
    @JsonKey(name: "price")
    int price;
    @JsonKey(name: "description")
    String description;
    @JsonKey(name: "images")
    List<String> images;
    @JsonKey(name: "rating")
    double rating;
    @JsonKey(name: "discount")
    int discount;
    @JsonKey(name: "remain")
    int remain;
    @JsonKey(name: "sold")
    int sold;
    @JsonKey(name: "category")
    String category;
    @JsonKey(name: "createdAt")
    DateTime createdAt;
    @JsonKey(name: "updatedAt")
    DateTime updatedAt;
    @JsonKey(name: "__v")
    int v;

    ListElement({
        required this.id,
        required this.title,
        required this.price,
        required this.description,
        required this.images,
        required this.rating,
        required this.discount,
        required this.remain,
        required this.sold,
        required this.category,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);

    Map<String, dynamic> toJson() => _$ListElementToJson(this);
}




import 'package:json_annotation/json_annotation.dart';

part 'categores_response.g.dart';

@JsonSerializable()
class CategoresResponse {
    @JsonKey(name: "list")
    List<ListElement> list;

    CategoresResponse({
        required this.list,
    });

    factory CategoresResponse.fromJson(Map<String, dynamic> json) => _$CategoresResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CategoresResponseToJson(this);
}

@JsonSerializable()
class ListElement {
    @JsonKey(name: "_id")
    String id;
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "products")
    List<String> products;
    @JsonKey(name: "__v")
    int v;

    ListElement({
        required this.id,
        required this.name,
        required this.products,
        required this.v,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);

    Map<String, dynamic> toJson() => _$ListElementToJson(this);
}

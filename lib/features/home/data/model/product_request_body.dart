import 'package:json_annotation/json_annotation.dart';
part 'product_request_body.g.dart';

@JsonSerializable()
class ProductRequestBody {
  int? skip;
  String? search;
  String? category;

  ProductRequestBody({
    this.skip,
    this.search,
    this.category,
  });
 factory ProductRequestBody.fromJson(Map<String, dynamic> json) => _$ProductRequestBodyFromJson(json);
 Map<String, dynamic> toJson() => _$ProductRequestBodyToJson(this);

}

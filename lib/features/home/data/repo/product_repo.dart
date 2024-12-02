import 'package:luxira/core/network/api_error_model.dart';
import 'package:luxira/core/network/api_result.dart';
import 'package:luxira/core/network/api_service.dart';
import 'package:luxira/features/home/data/model/product_request_body.dart';
import 'package:luxira/features/home/data/model/product_response.dart';

class ProductRepo {
  final ApiService _apiService;
  ProductRepo(this._apiService);

  Future<ApiResult<ProductResponse>> fetchProducts({
    required ProductRequestBody requestBody,
  })async{
   final response = _apiService.fetchProducts(
     ProductRequestBody(
      skip: 0,
      search: '',
      category: '',
     )
     
   );
   try{
     final result = await response;
     return ApiResult.success(result);
   }catch(e){
     return ApiResult.failure(ApiErrorModel(message: e.toString()));
   }
   
  }
}

import 'package:luxira/features/home/data/model/product_request_body.dart';
import 'package:luxira/features/home/data/model/product_response.dart';
import 'package:retrofit/retrofit.dart';  
import 'package:dio/dio.dart';  
  

part 'api_service.g.dart';  

@RestApi(baseUrl: "https://mansora.onrender.com/api/v1/")  
abstract class ApiService {  
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;  

  @GET("home/products")  
  Future<ProductResponse> fetchProducts(
    @Body() ProductRequestBody requestBody,
  );  
}  

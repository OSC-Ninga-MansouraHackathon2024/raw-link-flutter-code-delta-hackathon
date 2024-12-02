import 'package:luxira/core/network/api_error_model.dart';
import 'package:luxira/core/network/api_result.dart';
import 'package:luxira/core/network/api_service.dart';
import 'package:luxira/features/home/data/model/categores_response.dart';
import 'package:luxira/features/home/data/model/categories_request_body.dart';

class CategoriesRepo {
  final ApiService _apiService;
  CategoriesRepo(this._apiService);

  Future<ApiResult<CategoresResponse>> fetchCategories(
    {
      required CategoriesRequestBody requestBody,
    }
  ) async {
    var response = await _apiService.fetchCategories(CategoriesRequestBody(
      name: '',
    ));
    try {
      return ApiResult.success(response);
     } catch (e) {
      return ApiResult.failure(ApiErrorModel(message: e.toString()));
    }

  }
}

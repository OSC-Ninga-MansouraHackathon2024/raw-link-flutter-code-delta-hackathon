import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:luxira/core/network/api_error_model.dart';
import 'package:luxira/features/home/data/model/product_request_body.dart';
import 'package:luxira/features/home/data/repo/product_repo.dart';

import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo _repo;

  ProductCubit(this._repo) : super(const ProductState.initial());

  Future<void> fetchProducts({
    required ProductRequestBody requestBody,
  }) async {
    emit(const ProductState.loading());

    final result = await _repo.fetchProducts(requestBody: ProductRequestBody(
      skip: 0,
      search: '',
      category: 'Raw Materials',)
  

      
    );

    result.when(
      success: (data) => emit(ProductState.loaded(data.list)),
      failure: (error) => emit(ProductState.error(error.message.toString())),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxira/features/home/data/model/categories_request_body.dart';
import 'package:luxira/features/home/data/repo/categories_repo.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo _categoriesRepo;
  CategoriesCubit(this._categoriesRepo)
      : super(const CategoriesState.initial());

  Future<void> fetchCategories(
      {required CategoriesRequestBody requestBody}
  ) async {
    emit(const CategoriesState.loading());
    final result = await _categoriesRepo.fetchCategories(
        requestBody: CategoriesRequestBody(name: ''));
    result.when(
        success: (data) => emit(CategoriesState.loaded(data.list)),
        failure: (error) =>
            emit(CategoriesState.error(error.message.toString())));
  }
}



import 'package:freezed_annotation/freezed_annotation.dart';
 part 'categories_state.freezed.dart';
@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.loaded(T data) = Loaded;
  const factory CategoriesState.error(String error) = Error;
}
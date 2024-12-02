import 'package:freezed_annotation/freezed_annotation.dart';


part 'product_state.freezed.dart';

@freezed
class ProductState<T> with _$ProductState<T> {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.loaded(T data) = Loaded;
  const factory ProductState.error(String error) = Error;
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:luxira/core/network/api_service.dart';
import 'package:luxira/core/network/dio_factory.dart';
import 'package:luxira/features/home/data/repo/product_repo.dart';
import 'package:luxira/features/home/viewModel/cubit/product_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //Product 
  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));
  getIt.registerFactory<ProductCubit>(() => ProductCubit(getIt()));
}

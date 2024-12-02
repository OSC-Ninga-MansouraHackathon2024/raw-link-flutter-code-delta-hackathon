import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:luxira/core/di/di.dart';
import 'package:luxira/features/home/data/model/categories_request_body.dart';
import 'package:luxira/features/home/data/model/product_request_body.dart';
import 'package:luxira/features/home/view/screens/product_view.dart';
import 'package:luxira/features/home/view/screens/suppllers_view.dart';
import 'package:luxira/features/home/viewModel/categories_cubit/categories_cubit.dart';
import 'package:luxira/features/home/viewModel/cubit/product_cubit.dart';
import 'package:luxira/features/splash/view/screens/splash_view.dart';
import 'package:luxira/features/home/view/screens/home_view.dart';

import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<ProductCubit>()..fetchProducts(
                    requestBody: ProductRequestBody(
                  skip: 0,
                  search: '',
                  category: '',
                )),
              ),
              BlocProvider(create: (context) => getIt<CategoriesCubit>()..fetchCategories(
                 requestBody: CategoriesRequestBody(
                    name: '',
                  ),
              ),)
            ],
        
            child: const HomeView()),
        );
      case Routes.suppllersScreen:
       return MaterialPageRoute( builder:(_) => const SuppllersView());
       case Routes.productScreen:
       return MaterialPageRoute( builder:(_) => BlocProvider(
        create: (context) => getIt<ProductCubit>()..fetchProducts(
          requestBody: ProductRequestBody(
            skip: 0,
            search: '',
            category: '',
          ),
        ),
        child: const ProductView()));
      default:
        return null;
    }
  }
}

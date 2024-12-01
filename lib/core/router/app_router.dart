import 'package:flutter/material.dart';
import 'package:luxira/features/home/view/screens/suppllers_view.dart';
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
          builder: (_) => const HomeView(),
        );
      case Routes.suppllersScreen:
       return MaterialPageRoute( builder:(_) => SuppllersView());
      default:
        return null;
    }
  }
}

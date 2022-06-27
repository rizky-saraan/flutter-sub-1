import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/product/presentation/pages/detail_product.dart';

import '../../screen/home_screen/data/models/product.dart';
import '../../screen/home_screen/presentation/pages/home_screen.dart';
import '../../screen/onboard_screen/presentation/pages/onboard_screen.dart';
import '../../screen/splash_screen/presentation/pages/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/onboard':
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/detail_product':
        Product? product = settings.arguments as Product;
        return MaterialPageRoute(
          builder: (_) => DetailProduct(
            product: product,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

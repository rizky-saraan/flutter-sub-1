import 'package:flutter/material.dart';

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
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

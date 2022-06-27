import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/splash_screen/presentation/pages/splash_screen.dart';

import 'core/utility/route_generator.dart';
import 'core/utility/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Submission One',
      theme: CustomTheme.lightTheme,
      home: const SplashScreen(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

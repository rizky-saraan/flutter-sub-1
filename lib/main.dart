import 'package:flutter/material.dart';

import 'core/utility/route_generator.dart';
import 'core/utility/theme.dart';
import 'screen/splash_screen/presentation/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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

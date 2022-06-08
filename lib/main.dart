import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/home_screen/presentation/pages/home_screen.dart';

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
      home: const HomeScreen(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

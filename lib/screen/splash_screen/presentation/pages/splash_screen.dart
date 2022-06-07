import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  String versionName = "";

  @override
  void initState() {
    super.initState();
    _getVersionApps();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, "/onboard"),
    );
  }

  _getVersionApps() async {
    String projectVersion;
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      projectVersion = packageInfo.version;
    } on PlatformException {
      projectVersion = 'Failed to get project version.';
    }

    setState(() {
      versionName = projectVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                "Copyright © 2022 Rizky Saraan",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                versionName,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

import '../../../../core/utility/strings.dart';

class HomeScreen extends StatefulWidget {
  final String? title;

  const HomeScreen({Key? key, this.title}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          Strings?.storeName,
        ),
        backgroundColor: primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: primaryColor),
              accountName: Text(
                Strings.userName,
                style: textTheme.headline6?.copyWith(color: whiteColor),
              ),
              accountEmail: Text(
                "rikisaraan2@gmail.com",
                style: textTheme.bodyText1?.copyWith(color: whiteColor),
              ),
              currentAccountPicture: Image.asset(
                "assets/images/logo.png",
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.train,
              ),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}

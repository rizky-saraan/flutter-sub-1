import 'package:flutter/material.dart';

import '../../../../core/utility/colors.dart';
import '../../../../core/utility/strings.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
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
    );
  }
}

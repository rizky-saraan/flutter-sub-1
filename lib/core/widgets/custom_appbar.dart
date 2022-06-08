import 'package:flutter/material.dart';

import '../utility/colors.dart';
import '../utility/strings.dart';

class CustomAppbar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "assets/images/logo.png",
            width: MediaQuery.of(context).size.width,
            height: 200,
          ),
        ),
      ),
      title: const Text(
        Strings.storeName,
      ),
      backgroundColor: primaryColor,
    );
  }
}

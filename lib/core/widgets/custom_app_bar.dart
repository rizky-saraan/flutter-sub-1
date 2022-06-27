import 'package:flutter/material.dart';

import '../utility/colors.dart';
import '../utility/strings.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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

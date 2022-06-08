import 'package:flutter/material.dart';

import '../utility/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1.0,
      color: primaryColor,
      indent: 10,
      endIndent: 10,
    );
  }
}

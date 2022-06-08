import 'package:flutter/material.dart';

import '../../../../core/utility/colors.dart';

class ItemBanner extends StatelessWidget {
  final String? image;

  const ItemBanner({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: const BoxDecoration(color: primaryColor),
      child: Image.asset(
        "assets/images/banner/$image",
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

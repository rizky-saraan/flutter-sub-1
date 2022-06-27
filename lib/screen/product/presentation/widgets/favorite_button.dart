import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

class FavoriteButton extends StatelessWidget {
  final bool? isFavorite;
  final Function? press;
  final double? size;

  const FavoriteButton(
      {Key? key, this.isFavorite = false, this.press, this.size = 24.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite! ? Icons.favorite : Icons.favorite_border_outlined,
        color: primaryColor,
        size: size,
      ),
      onPressed: press as void Function()?,
    );
  }
}

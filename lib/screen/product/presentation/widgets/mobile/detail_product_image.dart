import 'package:flutter/material.dart';

import '../../../../home_screen/data/models/product.dart';

class DetailProductImage extends StatelessWidget {
  final Product? product;

  const DetailProductImage({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Hero(
          tag: product?.id ?? "",
          child: Image.network(
            product?.image ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black54, Colors.transparent],
            ),
          ),
        ),
      ],
    );
  }
}

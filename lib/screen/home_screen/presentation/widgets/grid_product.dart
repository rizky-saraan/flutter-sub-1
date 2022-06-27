import 'package:flutter/material.dart';
import 'package:flutter_sub_1/screen/home_screen/presentation/widgets/item_product.dart';

import '../../data/models/product.dart';

class GridProduct extends StatelessWidget {
  final List<Product>? listProduct;

  const GridProduct({Key? key, this.listProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 250,
        ),
        itemCount: listProduct?.length,
        itemBuilder: (BuildContext ctx, index) {
          return ItemProduct(
            product: listProduct?[index],
          );
        },
      ),
    );
  }
}

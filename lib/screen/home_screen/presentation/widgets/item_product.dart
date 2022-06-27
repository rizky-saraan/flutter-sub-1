import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/currency_formatter.dart';

import '../../../../core/utility/colors.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/product.dart';

class ItemProduct extends StatelessWidget {
  final Product? product;

  const ItemProduct({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail_product", arguments: product);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: greyColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: product?.id ?? "",
              child: Image.network(
                height: 100,
                width: MediaQuery.of(context).size.width,
                product?.image ?? "",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 5,
              child: Text(
                product?.name ?? "",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 3,
              child: Text(
                CurrencyFormatter.convertToIdr(
                    int.parse(product?.price ?? "0"), 0),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 3,
              child: CustomButton(
                label: "Beli",
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

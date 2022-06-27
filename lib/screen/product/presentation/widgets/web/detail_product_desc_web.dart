import 'package:flutter/material.dart';

import '../../../../../core/utility/colors.dart';
import '../../../../../core/utility/currency_formatter.dart';
import '../../../../home_screen/data/models/product.dart';

class DetailProductDescWeb extends StatelessWidget {
  final Product? product;
  const DetailProductDescWeb({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            product?.name ?? "",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          Text(
            CurrencyFormatter.convertToIdr(int.parse(product?.price ?? "0"), 0),
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 15),
          Text(
            product?.description ?? "",
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}

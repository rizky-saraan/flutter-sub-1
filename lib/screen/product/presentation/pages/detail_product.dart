import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';
import 'package:flutter_sub_1/core/widgets/custom_elevated_button.dart';

import '../../../../core/utility/currency_formatter.dart';
import '../../../../core/widgets/custom_plus_minus_button.dart';
import '../../../home_screen/data/models/product.dart';
import '../widgets/detail_app_bar.dart';

class DetailProduct extends StatefulWidget {
  final Product? product;

  const DetailProduct({Key? key, this.product}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailAppBar(
            product: widget.product,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    CurrencyFormatter.convertToIdr(
                        int.parse(widget.product?.price ?? "0"), 0),
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: accentColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    widget.product?.description ?? "-",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CustomElevatedButton(
              label: "Tambahkan ke Keranjang",
              press: () {},
            ),
            const SizedBox(width: 10),
            CustomPlusMinusButton(
              pressMinus: () {
                _itemCount != 0
                    ? setState(
                        () => _itemCount--,
                      )
                    : null;
              },
              itemCount: _itemCount.toString(),
              pressPlus: () {
                setState(
                  () => _itemCount++,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

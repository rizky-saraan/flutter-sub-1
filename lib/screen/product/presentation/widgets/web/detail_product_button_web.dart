import 'package:flutter/material.dart';

import '../../../../../core/utility/colors.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_plus_minus_button.dart';

class DetailProductButtonWeb extends StatefulWidget {
  const DetailProductButtonWeb({Key? key}) : super(key: key);

  @override
  State<DetailProductButtonWeb> createState() => _DetailProductButtonWebState();
}

class _DetailProductButtonWebState extends State<DetailProductButtonWeb> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: greyColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          const SizedBox(height: 20),
          CustomElevatedButton(
            label: "Tambahkan ke Keranjang",
            press: () {},
          ),
        ],
      ),
    );
  }
}

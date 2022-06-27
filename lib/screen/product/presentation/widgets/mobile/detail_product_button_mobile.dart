import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_plus_minus_button.dart';

class DetailProductButtonMobile extends StatefulWidget {
  const DetailProductButtonMobile({Key? key}) : super(key: key);

  @override
  State<DetailProductButtonMobile> createState() =>
      _DetailProductButtonMobileState();
}

class _DetailProductButtonMobileState extends State<DetailProductButtonMobile> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

class CustomPlusMinusButton extends StatelessWidget {
  final Function? pressPlus;
  final Function? pressMinus;
  final String? itemCount;

  const CustomPlusMinusButton(
      {Key? key, this.pressPlus, this.pressMinus, this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          highlightColor: whiteColor,
          icon: const Icon(Icons.remove),
          onPressed: pressMinus as void Function()?,
        ),
        Text(itemCount.toString()),
        IconButton(
          highlightColor: whiteColor,
          icon: const Icon(Icons.add),
          onPressed: pressPlus as void Function()?,
        )
      ],
    );
  }
}

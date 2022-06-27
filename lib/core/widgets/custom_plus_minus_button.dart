import 'package:flutter/material.dart';

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
          icon: const Icon(Icons.remove),
          onPressed: pressMinus as void Function()?,
        ),
        Text(itemCount.toString()),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: pressPlus as void Function()?,
        )
      ],
    );
  }
}

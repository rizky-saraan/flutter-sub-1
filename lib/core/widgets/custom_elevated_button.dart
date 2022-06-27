import 'package:flutter/material.dart';
import 'package:flutter_sub_1/core/utility/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? label;
  final Function? press;

  const CustomElevatedButton({
    Key? key,
    this.label,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: accentColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          textStyle:
              Theme.of(context).textTheme.button?.copyWith(color: whiteColor),
        ),
        onPressed: press as void Function()?,
        child: Text(
          label ?? "",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

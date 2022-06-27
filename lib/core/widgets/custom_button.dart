import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Function? press;

  const CustomButton({
    Key? key,
    this.label,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: press as void Function()?,
        child: Text(
          label ?? "",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class IconbuttonCusttom extends StatelessWidget {
  const IconbuttonCusttom(
      {super.key,
      this.onPressed,
      required this.size,
      required this.iconData});
  final void Function()? onPressed;
  final double size;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size:size,
        ));
  }
}

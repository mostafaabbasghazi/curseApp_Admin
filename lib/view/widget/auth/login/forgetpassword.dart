import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';

class ForgetpasswordLogin extends StatelessWidget {
  const ForgetpasswordLogin({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        margin: const EdgeInsets.only(left: 15),
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: AppStyle.textStyle14,
        ),
      ),
    );
  }
}

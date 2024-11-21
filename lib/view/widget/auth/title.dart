import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';

class TitleLogin extends StatelessWidget {
  const TitleLogin({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return   Text(
                text,
                style: AppStyle.textStyle30,
                textAlign: TextAlign.center,
              );
  }
}
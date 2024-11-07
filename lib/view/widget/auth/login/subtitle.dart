import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';

class SubtitleLogin extends StatelessWidget {
  const SubtitleLogin({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return   Text(text,
                  textAlign: TextAlign.center,
                  style: AppStyle.textStyle20.copyWith(color: AppColor.black));
  }
}
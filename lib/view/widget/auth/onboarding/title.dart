import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';

class TitleIntro extends StatelessWidget {
  const TitleIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text("Welcome In Your Online Azoo Class ", 
    style: AppStyle.textStyle35,
        textAlign: TextAlign.center,
        );
  }
}
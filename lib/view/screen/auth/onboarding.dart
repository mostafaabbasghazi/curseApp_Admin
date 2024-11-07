import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/onboarding/button.dart';
import 'package:ui_response/view/widget/auth/onboarding/image.dart';
import 'package:ui_response/view/widget/auth/onboarding/subtitle.dart';
import 'package:ui_response/view/widget/auth/onboarding/title.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              margin:const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
        const ImageIntro(),
        const SizedBox(height: 10,),
        const TitleIntro(),
        const SubtitleIntro(),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ButtonIntro(title: "Login", color: AppColor.blue,onTap: (){},),
          ButtonIntro(title: "Regestr",onTap: (){},)
          ],
        )
        ],
    ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';

class ButtonIntro extends StatelessWidget {
  const ButtonIntro({super.key, required this.title,  this.color,required this.onTap});
  final String title;
  final Color? color;
  final void Function() onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
        child: Container(
      alignment: Alignment.center,
      width: 140,
      height: 60,
      decoration: BoxDecoration(
          color:color !=null ?color:AppColor.black, 
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        title,
        style: AppStyle.textStyle20,
      ),
    ));
  }
}

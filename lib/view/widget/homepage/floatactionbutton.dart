import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';

class FloatactionbuttonHome extends StatelessWidget {
  const FloatactionbuttonHome({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.add,color: AppColor.backgroundcolor,size: 35,),
        elevation: 0,
          shape: CircleBorder(),
          splashColor: AppColor.black,
          highlightElevation: 5,
          backgroundColor: AppColor.blue,
          onPressed:onPressed);
  }
}
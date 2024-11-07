import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * .8,
          decoration: ShapeDecoration(
              color: AppColor.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            text,
            style: AppStyle.textStyle20,
          ),
        ),
      ),
    );
  }
}

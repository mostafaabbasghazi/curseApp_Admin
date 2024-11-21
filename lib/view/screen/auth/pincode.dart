import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/button.dart';
import 'package:ui_response/view/widget/auth/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/subtitle.dart';
import 'package:ui_response/view/widget/auth/title.dart';

class Pincode extends StatefulWidget {
  const Pincode({super.key});

  @override
  State<Pincode> createState() => _LoginState();
}

class _LoginState extends State<Pincode> {
  List<TextEditingController> controllers =
      List.generate(5, (index) => TextEditingController());

  List<FocusNode> focus = List.generate(5, (index) => FocusNode());

  @override
  void dispose() {
    super.dispose();
    controllers.forEach((controller) => controller.dispose);
    focus.forEach((focus) => focus.dispose);
  }

  void onChange(String value, int index) {
    if (value.isNotEmpty && index < 5 - 1) {
      focus[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      focus[index - 1].requestFocus();
    }
  }

  String getCode() {
    return controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleLogin(
              text: "Enter Pinode",
            ),
            const SubtitleLogin(text: "Welcome back you’ve \n been missed!"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  width: 50,
                  height: 50,
                  margin:const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focus[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    style: AppStyle.textStyle24,
                    decoration: InputDecoration(
                      counterText: "",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:const BorderSide(color: Colors.grey)
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:const BorderSide(color: AppColor.blue),
                        ),
                      
                    ),
                    onChanged: (value) => onChange(value,index),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonLogin(
              text: "Continue",
              onTap: () {},
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    )));
  }
}

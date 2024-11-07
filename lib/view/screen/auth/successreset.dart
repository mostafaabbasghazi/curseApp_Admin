import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/login/button.dart';
import 'package:ui_response/view/widget/auth/login/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/login/subtitle.dart';
import 'package:ui_response/view/widget/auth/login/title.dart';

class Successreset extends StatefulWidget {
  const Successreset({super.key});

  @override
  State<Successreset> createState() => _LoginState();
}

class _LoginState extends State<Successreset> {
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
                const TitleLogin(text: "Success Created",),
                const SubtitleLogin(text:"Welcome back you’ve \n been missed!"),
                const SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.7,
                  child: Lottie.asset("assets/success.json",),
                ),
                const SizedBox(height: 30,),
                   ButtonLogin(text: "Continue",onTap: (){},),
                   const SizedBox(height: 6,),
                  ],
            ),
          
        ),
        ))
    );
  }
}

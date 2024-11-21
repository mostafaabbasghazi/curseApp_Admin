import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/button.dart';
import 'package:ui_response/view/widget/auth/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/subtitle.dart';
import 'package:ui_response/view/widget/auth/title.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _LoginState();
}

class _LoginState extends State<Forgetpassword> {
  final FocusNode focusNodeEmail = FocusNode();
  final TextEditingController email = TextEditingController();
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
                const TitleLogin(text: "Check Email",),
                const SubtitleLogin(text:"Welcome back you’ve \n been missed!"),
                const SizedBox(height: 30,),
                Form(
                    child: Column(
                  children: [
                   Inputauth(
                    isNumber: false,
                    controller: email, 
                    node: focusNodeEmail, 
                    text: "E-mail", 
                    iconData:const Icon(Icons.email_outlined), 
                    action: TextInputAction.done, 
                    secure: false,
                    validator: (value){},
                    ),
                   
                    const SizedBox(height: 30,),
                   ButtonLogin(text: "Send Code",onTap: (){},),
                   const SizedBox(height: 6,),
                  ForgetpasswordLogin(text: "Go To Login ?",onTap: (){},)
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

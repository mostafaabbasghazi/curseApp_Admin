import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/button.dart';
import 'package:ui_response/view/widget/auth/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/subtitle.dart';
import 'package:ui_response/view/widget/auth/title.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _LoginState();
}

class _LoginState extends State<Resetpassword> {
  final FocusNode focusNodePassword1 = FocusNode();
  final FocusNode focusNodePassword2 = FocusNode();
  final TextEditingController password1 = TextEditingController();
  final TextEditingController password2 = TextEditingController();
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
                const TitleLogin(text: "Create New Password",),
                const SubtitleLogin(text:"Welcome back you’ve \n been missed!"),
                const SizedBox(height: 30,),
                Form(
                    child: Column(
                  children: [
                   Inputauth(
                    isNumber: false,
                    controller: password1, 
                    node: focusNodePassword1, 
                    nextNode: focusNodePassword2, 
                    text: "Password", 
                    iconData:const Icon(Icons.password_outlined), 
                    action: TextInputAction.next, 
                    secure: true,
                    validator: (value){},
                    ),
                    SizedBox(height: 20,),
                     Inputauth(
                    isNumber: false,
                    controller: password2, 
                    node: focusNodePassword2, 
                    text: "Re-Password", 
                    iconData:const Icon(Icons.password_outlined), 
                    action: TextInputAction.done, 
                    secure: true,
                    validator: (value){},
                    ),
                    const SizedBox(height: 30,),
                   ButtonLogin(text: "Confirm",onTap: (){},),
                   const SizedBox(height: 6,),
                 
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

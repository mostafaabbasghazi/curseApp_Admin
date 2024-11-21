import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/button.dart';
import 'package:ui_response/view/widget/auth/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/subtitle.dart';
import 'package:ui_response/view/widget/auth/title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodePassword = FocusNode();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
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
                const TitleLogin(text: "Login Here",),
                const SubtitleLogin(text:"Welcome back you’ve \n been missed!"),
                const SizedBox(height: 30,),
                Form(
                    child: Column(
                  children: [
                   Inputauth(
                    isNumber: false,
                    controller: email, 
                    node: focusNodeEmail, 
                    nextNode: focusNodePassword, 
                    text: "E-mail", 
                    iconData:const Icon(Icons.email_outlined), 
                    action: TextInputAction.next, 
                    secure: false,
                    validator: (value){},
                    ),
                    SizedBox(height: 20,),
                     Inputauth(
                    isNumber: false,
                    controller: password, 
                    node: focusNodePassword, 
                    text: "Password", 
                    iconData:const Icon(Icons.password_outlined), 
                    action: TextInputAction.done, 
                    secure: true,
                    validator: (value){},
                    ),
                    const SizedBox(height: 30,),
                   ButtonLogin(text: "Login",onTap: (){},),
                   const SizedBox(height: 6,),
                  ForgetpasswordLogin(text: "Are You Forget Password ?",onTap: (){},)
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

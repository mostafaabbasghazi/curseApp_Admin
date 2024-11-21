import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/widget/auth/inputauth.dart';
import 'package:ui_response/view/widget/auth/button.dart';
import 'package:ui_response/view/widget/auth/forgetpassword.dart';
import 'package:ui_response/view/widget/auth/subtitle.dart';
import 'package:ui_response/view/widget/auth/title.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodePassword = FocusNode();
  final FocusNode focusNodePhone = FocusNode();
  final FocusNode focusNodeMajor = FocusNode();
  final FocusNode focusNodeUserName = FocusNode();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController major = TextEditingController();
  final TextEditingController userName = TextEditingController();
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
                const TitleLogin(text: "Create Account Here",),
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
                     SizedBox(height: 20,),
                     Inputauth(
                    isNumber: true,
                    controller: phone, 
                    node: focusNodePhone, 
                    nextNode: focusNodeMajor,
                    text: "Phone", 
                    iconData:const Icon(Icons.call), 
                    action: TextInputAction.next, 
                    secure: false,
                    validator: (value){},
                    ),
                    SizedBox(height: 20,),
                     Inputauth(
                    isNumber: false,
                    controller: major, 
                    node: focusNodeMajor, 
                    nextNode: focusNodeUserName,
                    text: "Major", 
                    iconData:const Icon(Icons.emoji_people), 
                    action: TextInputAction.next, 
                    secure: false,
                    validator: (value){},
                    ),
                    SizedBox(height: 20,),
                     Inputauth(
                    isNumber: false,
                    controller: userName, 
                    node: focusNodeUserName, 
                    text: "UserName", 
                    iconData:const Icon(Icons.person_2_outlined), 
                    action: TextInputAction.done, 
                    secure: false,
                    validator: (value){},
                    ),
                    const SizedBox(height: 30,),
                   ButtonLogin(text: "Sign Up",onTap: (){},),
                   const SizedBox(height: 6,),
                  ForgetpasswordLogin(text: "Are You Have Axxount ?",onTap: (){},)
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

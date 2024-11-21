import 'package:flutter/material.dart';
import 'package:ui_response/view/screen/auth/forgetpassword.dart';
import 'package:ui_response/view/screen/auth/login.dart';
import 'package:ui_response/view/screen/auth/onboarding.dart';
import 'package:ui_response/view/screen/auth/pincode.dart';
import 'package:ui_response/view/screen/auth/resetpassword.dart';
import 'package:ui_response/view/screen/auth/signUp.dart';
import 'package:ui_response/view/screen/auth/successreset.dart';
import 'package:ui_response/view/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}


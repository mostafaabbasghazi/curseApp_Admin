import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/screen/lesson.dart';
import 'package:ui_response/view/widget/home/iconbutton.dart';
import 'package:ui_response/view/widget/homepage/appbar.dart';
import 'package:ui_response/view/widget/homepage/floatactionbutton.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarHome("Lessons"),
        body: ListView.builder(
        itemBuilder: (context, index) {
          return Material(
            child: InkWell(
              onTap: (){
                Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Lesson()),
);
              },
                child: Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amberAccent),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/intro.png",
                          width: 200,
                          height: 200,
                        ),
                        Text(
                          " الدرس الاول  $index",
                          style: AppStyle.textStyle24,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      
                       
                      ],
                    ))),
          );
        },
        itemCount: 40),
        floatingActionButton: FloatactionbuttonHome(),
    );
  }
}
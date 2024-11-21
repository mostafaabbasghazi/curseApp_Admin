import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/screen/lessons.dart';
import 'package:ui_response/view/widget/home/iconbutton.dart';

class Unite extends StatefulWidget {
  const Unite({super.key});

  @override
  State<Unite> createState() => _UniteState();
}

class _UniteState extends State<Unite> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            margin:
                const EdgeInsets.only(top: 7, bottom: 7, left: 12, right: 12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Text(
                  " الوحدة الاولى",
                  style: AppStyle.textStyle24,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconbuttonCusttom(size: 25, iconData: Icons.delete_outline,onPressed: (){},),
                    const SizedBox(
                      width: 8,
                    ),
                    IconbuttonCusttom(
                      size: 25,
                      iconData: Icons.edit,
                      onPressed: () {
                       
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconbuttonCusttom(size: 25, iconData: Icons.navigate_next_outlined,onPressed: (){
                        Navigator.push(context,
                             MaterialPageRoute(builder: (context) => Lessons()));
                    },)
                  ],
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:ui_response/core/const/style.dart';
import 'package:ui_response/view/screen/unite.dart';
import 'package:ui_response/view/widget/home/iconbutton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
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
                        "الصف الاول الثانوى $index",
                        style: AppStyle.textStyle24,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconbuttonCusttom(size: 30, iconData: Icons.delete_outline),
                    const SizedBox(
                      width: 8,
                    ),
                    IconbuttonCusttom(
                      size: 30,
                      iconData: Icons.edit,
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Lessons()));
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconbuttonCusttom(size: 30, iconData: Icons.navigate_next_outlined,onPressed: (){},)
                  ],
                ),
                SizedBox(height: 20,),
                      if(enable==true)Unite()
                    ],
                  )));
        },
        itemCount: 40);
  }
}

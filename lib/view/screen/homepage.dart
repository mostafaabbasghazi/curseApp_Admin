import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/view/screen/home.dart';
import 'package:ui_response/view/screen/profile.dart';
import 'package:ui_response/view/widget/homepage/appbar.dart';
import 'package:ui_response/view/widget/homepage/floatactionbutton.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> screens = [ Home(), Profile()];
  int indexScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      appBar:appBarHome("Home"),
      body: screens.elementAt(indexScreen),
      bottomNavigationBar: BottomAppBar(
      notchMargin: 6,
      shape: CircularNotchedRectangle(),
      color: AppColor.primaryColor,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 0;
                  });
                },
                icon: Icon(
                  Icons.home_outlined,
                  size:indexScreen == 0 ? 34 : 32,
                  color:indexScreen == 0
                      ? AppColor.backgroundcolor
                      : AppColor.grey,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    indexScreen = 1;
                  });
                },
                icon: Icon(
                  Icons.person_2_outlined,
                  size:indexScreen == 1 ? 34 : 32,
                  color:indexScreen == 1
                      ? AppColor.backgroundcolor
                      : AppColor.grey,
                ))
          ],
        ),
      ),
    ),
      floatingActionButton: FloatactionbuttonHome(onPressed: (){},),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';
import 'package:ui_response/core/const/style.dart';

AppBar appBarHome(String text) {
  return AppBar(
      title: Text(
        text,
        style: AppStyle.textStyle24.copyWith(color: Colors.white),
      ),
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            )),
           
       const SizedBox(
          width: 12,
        ),
      ],
      //forceMaterialTransparency: true,
      excludeHeaderSemantics: true,
      shadowColor: AppColor.blue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      backgroundColor: AppColor.blue,
      surfaceTintColor: AppColor.blue,
      centerTitle: true,
      scrolledUnderElevation: 20,
      elevation: 5,
      clipBehavior: Clip.antiAlias
      //   flexibleSpace:  Container(
      //   decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //   colors: [Colors.blue,AppColor.blue],
      //   begin: Alignment.topLeft,
      //   end: Alignment.bottomRight,
      // )
      // ,)
      // )
      );
}

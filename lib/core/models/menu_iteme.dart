import 'package:flutter/material.dart';
import 'package:ui_response/core/const/color.dart';

class FanMenuItem {

  final Widget? itemWidget;

 
  final IconData? icon;

 
  final String title;

 
  final TextStyle titleStyle;

 
  final Color menuItemColor;

 
  final Color menuItemIconColor;

  
  final List<BoxShadow> menuItemBoxShadow;

  
  final void Function() onTap;

  const FanMenuItem({
    required this.onTap,
    this.itemWidget,
    this.icon,
    this.title = '',
    this.menuItemIconColor = AppColor.blue,
    this.titleStyle = const TextStyle(fontSize: 16, color: Colors.black),
    this.menuItemBoxShadow = const [
      BoxShadow(color: Colors.grey, offset: Offset(0, 0), blurRadius: 2)
    ],
    this.menuItemColor = Colors.white,
  }) : assert(itemWidget != null || icon != null);
}
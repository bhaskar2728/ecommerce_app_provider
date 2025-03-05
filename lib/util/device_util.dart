import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceUtil{
  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double  screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static bool isDarkMode(BuildContext context){
    print("KDEBUG::isDarkMode ${MediaQuery.of(context).platformBrightness}");
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }
  static const toolBarHeight = kToolbarHeight;
  static const bottomNavBarHeight = kBottomNavigationBarHeight;
}
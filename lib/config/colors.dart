import 'package:flutter/material.dart';

class AppColor {
  static final AppColor _appColor = AppColor._internal();

  factory AppColor() {
    return _appColor;
  }

  AppColor._internal();

  Color focusColorLightMode = Colors.blue;
  Color unFocusColorLightMode = Colors.blue.withOpacity(.4);
  Color lightBackgroundColor = const Color(0xffF5F5F5);
  Color blackBackgroundColor = const Color(0xff1d1d51);
  Color focusColorDarkMode = const Color(0xfff5fcf9);
  Color unFocusColorDarkMode = const Color(0xfff5fcf9).withOpacity(.4);
  Color lightBottomBarColor = Colors.grey.withOpacity(.4);
  Color blackBottomBarColor = const Color(0xff1d1d35);
  Color whiteColor = Colors.white;
  Color blackColor = Colors.black;
  Color messageColor = const Color(0xff696969);
  Color activeMessageColor = const Color(0xff00FF00);
  Color voiceColor = const Color(0xff00BFFF);
  Color messageBoxLightColor = const Color(0xff87CEFA).withOpacity(.1);
  Color messageBoxDarkColor = const Color(0xff1d1d35);
  Color greyColor = const Color(0xffA9A9A9);
}

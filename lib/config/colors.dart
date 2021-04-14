import 'package:flutter/material.dart';

class AppColor {
  static final AppColor _appColor = AppColor._internal();

  factory AppColor() {
    return _appColor;
  }

  AppColor._internal();

  Color focusColor = Colors.blue;
  Color unFocusColor = Colors.blue.withOpacity(.4);
}

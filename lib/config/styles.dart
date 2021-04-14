import 'package:flutter/cupertino.dart';
import 'package:social_app/config/colors.dart';

class AppTextStyle {
  static final AppTextStyle _appTextStyle = AppTextStyle._internal();

  factory AppTextStyle() => _appTextStyle;

  AppTextStyle._internal();

  TextStyle focusBottomBarTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColor().focusColor,
  );
  TextStyle unFocusBottomBarTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor().unFocusColor,
  );
}

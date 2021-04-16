import 'package:flutter/cupertino.dart';
import 'package:social_app/config/colors.dart';

class AppTextStyle {
  static final AppTextStyle _appTextStyle = AppTextStyle._internal();

  factory AppTextStyle() => _appTextStyle;

  AppTextStyle._internal();

  TextStyle focusBottomBarTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColor().focusColorLightMode,
    fontFamily: 'Raleway',
  );
  TextStyle unFocusBottomBarTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor().unFocusColorLightMode,
    fontFamily: 'Raleway',
  );

  TextStyle headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColor().whiteColor,
    fontFamily: 'Raleway',
  );

  TextStyle normalStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColor().whiteColor,
    fontFamily: 'Raleway',
  );

  TextStyle nameStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor().whiteColor,
    fontFamily: 'Raleway',
  );

  TextStyle messageStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColor().messageColor,
    fontFamily: 'Raleway',
  );

  TextStyle userMessageNameStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor().focusColorDarkMode,
    fontFamily: 'Raleway',
  );

  TextStyle activeStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColor().focusColorDarkMode,
    fontFamily: 'Raleway',
  );

  TextStyle sendMessageStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColor().messageColor,
    fontFamily: 'Raleway',
  );
}

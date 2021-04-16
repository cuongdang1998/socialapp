import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';

class AppTheme {
  static final AppTheme _appTheme = AppTheme._internal();

  factory AppTheme() {
    return _appTheme;
  }

  AppTheme._internal();

  ThemeData lightTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      backgroundColor: AppColor().lightBackgroundColor,
      scaffoldBackgroundColor: AppColor().lightBackgroundColor,
      primaryColor: AppColor().focusColorLightMode,
      iconTheme: IconThemeData(color: AppColor().lightBackgroundColor),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
        bodyText2: TextStyle(fontSize: 33.0),
      ).apply(
        fontFamily: 'Raleway',
        bodyColor: AppColor().blackBackgroundColor,
      ),
    );
  }

  ThemeData darkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      backgroundColor: AppColor().blackBackgroundColor,
      primaryColor: AppColor().blackBackgroundColor,
      scaffoldBackgroundColor: AppColor().blackBackgroundColor,
      iconTheme: IconThemeData(color: AppColor().blackBackgroundColor),
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
        headline2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
        bodyText2: TextStyle(fontSize: 33.0),
      ).apply(
        fontFamily: 'Raleway',
        bodyColor: AppColor().lightBackgroundColor,
      ),
    );
  }

  bool isLightMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.light;
  }
}

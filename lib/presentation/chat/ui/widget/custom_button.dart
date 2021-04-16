import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.isActive,
    this.text,
    this.onTap,
  }) : super(key: key);
  final bool isActive;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColor().whiteColor)),
      onPressed: onTap,
      color: isActive ? AppColor().whiteColor : Colors.transparent,
      elevation: isActive ? 4 : 0,
      child: Text(
        text,
        style: AppTextStyle().normalStyle.copyWith(
          color: isActive ? AppColor().blackColor : AppColor().whiteColor,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

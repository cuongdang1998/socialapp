import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/config/themes.dart';
import 'package:social_app/gen/assets.gen.dart';

typedef ButtonCallback = void Function();

class MenuItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  final AssetGenImage icon;
  final ButtonCallback onClick;

  const MenuItem({
    Key key,
    this.isSelected,
    this.title,
    this.icon,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      onDoubleTap: () {
        onClick();
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.image(
              color: getColor(context),
              height: 30,
              width: 30,
              fit: BoxFit.contain
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                title,
                style: isSelected
                    ? AppTextStyle().focusBottomBarTextStyle.copyWith(
                          color: getColor(context),
                        )
                    : AppTextStyle().unFocusBottomBarTextStyle.copyWith(
                          color: getColor(context),
                        ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }

  Color getColor(context) {
    return AppTheme().isLightMode(context)
        ? (isSelected
            ? AppColor().focusColorLightMode
            : AppColor().unFocusColorLightMode)
        : (isSelected
            ? AppColor().focusColorDarkMode
            : AppColor().unFocusColorDarkMode);
  }
}

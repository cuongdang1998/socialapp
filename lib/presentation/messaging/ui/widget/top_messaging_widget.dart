import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/config/themes.dart';

class TopMessageBarWidget extends StatelessWidget {
  const TopMessageBarWidget({
    Key key,
    this.image,
    this.userName,
    this.isActive = false,
    this.minute,
  }) : super(key: key);
  final String image;
  final String userName;
  final bool isActive;
  final int minute;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      color: AppTheme().isLightMode(context)
          ? AppColor().focusColorLightMode
          : AppColor().blackBottomBarColor,
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          bottom: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              color: AppColor().whiteColor,
              icon: const Icon(Icons.arrow_back_ios_sharp),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 10,
              ),
              child: ClipOval(
                child: Image.asset(
                  image,
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: AppTextStyle().userMessageNameStyle,
                ),
                Text(
                  isActive ? 'Active Now' : 'Active ${minute}m ago',
                  style: AppTextStyle().activeStyle,
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      color: AppColor().whiteColor,
                      icon: const Icon(
                        Icons.call,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: AppColor().whiteColor,
                      icon: const Icon(
                        Icons.video_call,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

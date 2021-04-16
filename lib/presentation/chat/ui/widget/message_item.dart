import 'package:flutter/cupertino.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/config/themes.dart';

typedef MessageItemTap = void Function();

class MessageItem extends StatelessWidget {
  const MessageItem({
    Key key,
    this.image,
    this.userName,
    this.message,
    this.isActive,
    this.onTap,
    this.index,
  }) : super(key: key);
  final String image;
  final String userName;
  final String message;
  final bool isActive;
  final MessageItemTap onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: index == 0 ? 20 : 0,
          bottom: 20,
          left: 20,
        ),
        height: 60,
        child: Row(
          children: [
            Stack(
              children: [
                ClipOval(
                  child: Image.asset(
                    image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 3,
                  child: ClipOval(
                    child: Container(
                      width: 12,
                      height: 12,
                      color: AppColor().activeMessageColor,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 8),
                      child: Text(
                        userName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTheme().isLightMode(context)
                            ? AppTextStyle().nameStyle.copyWith(
                                  color: AppColor().blackColor,
                                )
                            : AppTextStyle().nameStyle,
                      ),
                    ),
                    Text(
                      message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme().isLightMode(context)
                          ? AppTextStyle().messageStyle
                          : AppTextStyle().messageStyle.copyWith(
                                color: AppColor().whiteColor,
                              ),
                    ),
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

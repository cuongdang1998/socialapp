import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/config/themes.dart';
import 'package:social_app/presentation/messaging/bloc/messaging_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'file_and_camera_buttons.dart';

class RightBottomMessagingWidget extends StatefulWidget {
  const RightBottomMessagingWidget({
    Key key,
  }) : super(key: key);

  @override
  _RightBottomMessagingWidgetState createState() =>
      _RightBottomMessagingWidgetState();
}

class _RightBottomMessagingWidgetState
    extends State<RightBottomMessagingWidget> {
  MessagingBloc bloc;
  bool isSend = false;

  @override
  void initState() {
    bloc = context.read<MessagingBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme().isLightMode(context)
              ? AppColor().messageBoxLightColor
              : AppColor().messageBoxDarkColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.emoji_emotions,
                color: AppColor().greyColor,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: bloc.messageController,
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    isSend = true;
                  } else {
                    isSend = false;
                  }
                  setState(() {});
                },
                style: AppTextStyle().sendMessageStyle,
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isCollapsed: false,
                  hintText: 'Type message',
                  hintStyle: AppTextStyle().sendMessageStyle,
                ),
              ),
            ),
            Visibility(
              visible: isSend,
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: AppColor().voiceColor,
                ),
                onPressed: () {},
              ),
            ),
            Visibility(
              visible: !isSend,
              child: const FileAndCameraButtons(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/presentation/messaging/bloc/messaging_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/messaging/ui/widget/message_decoration.dart';
import 'package:social_app/presentation/messaging/ui/widget/right_bottom_messaging_widget.dart';

class BottomMessagingWidget extends StatefulWidget {
  const BottomMessagingWidget({
    Key key,
  }) : super(key: key);

  @override
  _BottomMessagingWidgetState createState() => _BottomMessagingWidgetState();
}

class _BottomMessagingWidgetState extends State<BottomMessagingWidget> {
  MessagingBloc bloc;

  @override
  void initState() {
    bloc = context.read<MessagingBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MessageDecoration().marginBottomMessage,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.keyboard_voice,
              color: AppColor().voiceColor,
            ),
            onPressed: () {},
          ),
          const RightBottomMessagingWidget()
        ],
      ),
    );
  }
}

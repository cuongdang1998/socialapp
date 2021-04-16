import 'package:flutter/material.dart';
import 'package:social_app/presentation/messaging/ui/widget/bottom_messaging_widget.dart';
import 'package:social_app/presentation/messaging/ui/widget/top_messaging_widget.dart';

class MessagingScreen extends StatelessWidget {
  final String image;
  final String userName;
  final bool isActive;
  final int minute;

  const MessagingScreen({
    Key key,
    this.image,
    this.userName,
    this.isActive,
    this.minute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          child: Column(
            children: [
              TopMessageBarWidget(
                isActive: isActive,
                userName: userName,
                image: image,
                minute: minute,
              ),
              Expanded(
                child: Container(),
              ),
              const BottomMessagingWidget()
            ],
          ),
        ),
      ),
    );
  }
}

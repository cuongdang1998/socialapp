import 'package:flutter/material.dart';
import 'package:social_app/presentation/chat/ui/widget/message_item.dart';
import 'package:social_app/presentation/chat/ui/widget/top_widget.dart';
import 'package:social_app/presentation/messaging/ui/messaging_screen.dart';
import 'package:social_app/utils/route/app_routing.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const TopWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return MessageItem(
                    image: 'assets/images/user1.JPG',
                    userName: 'Quốc Cường',
                    message: 'Chào em, anh là Cường.',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteDefine.MessagingScreen.name,
                        arguments: const MessagingScreen(
                          image: 'assets/images/user1.JPG',
                          userName: 'Quốc Cường',
                          isActive: true,
                          minute: 5,
                        ),
                      );
                    },
                    isActive: true,
                    index: index,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

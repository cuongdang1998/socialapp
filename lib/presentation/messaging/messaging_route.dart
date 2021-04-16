import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/messaging/bloc/messaging_bloc.dart';
import 'package:social_app/presentation/messaging/ui/messaging_screen.dart';

class MessagingRoute {
  static Widget route(
      {String image, String userName, bool isActive, int minute}) {
    return BlocProvider(
      create: (context) => MessagingBloc(),
      child: MessagingScreen(
        userName: userName,
        image: image,
        isActive: isActive,
        minute: minute,
      ),
    );
  }
}

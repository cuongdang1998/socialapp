import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/chat/bloc/chat_bloc.dart';
import 'package:social_app/presentation/chat/ui/chat_screen.dart';

class ChatRoute {
  static Widget get route => BlocProvider(
        create: (context) => ChatBloc(),
        child: ChatScreen(),
      );
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'chat_event.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial());

  bool isSelectMessageButton = true;
  bool isSelectActiveButton = false;
  TextEditingController searchController =TextEditingController();

  @override
  Stream<ChatState> mapEventToState(
    ChatEvent event,
  ) async* {
    if (event is RecentMessageEvent) {
      isSelectMessageButton = true;
      isSelectActiveButton = false;
      yield GetRecentMessageState();
    } else if (event is ActiveEvent) {
      isSelectMessageButton = false;
      isSelectActiveButton = true;
      yield GetActiveState();
    }
  }
}

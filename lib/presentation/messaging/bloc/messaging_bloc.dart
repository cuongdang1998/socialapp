import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  MessagingBloc() : super(MessagingInitial());

  TextEditingController messageController = TextEditingController();

  @override
  Stream<MessagingState> mapEventToState(
    MessagingEvent event,
  ) async* {
  }
}

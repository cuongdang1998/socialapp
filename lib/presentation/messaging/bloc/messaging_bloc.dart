import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  MessagingBloc() : super(MessagingInitial());

  @override
  Stream<MessagingState> mapEventToState(
    MessagingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

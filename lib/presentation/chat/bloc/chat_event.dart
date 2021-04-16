part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {}

class RecentMessageEvent extends ChatEvent {}

class ActiveEvent extends ChatEvent {}

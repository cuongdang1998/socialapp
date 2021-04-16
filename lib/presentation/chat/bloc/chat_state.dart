part of 'chat_bloc.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class GetRecentMessageState extends ChatState {}

class GetActiveState extends ChatState {}

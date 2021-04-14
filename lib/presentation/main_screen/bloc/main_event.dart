part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

class SelectMenuItemEvent extends MainEvent {
  final int index;

  SelectMenuItemEvent({this.index});
}

class ScrollMenuItemEvent extends MainEvent {
  final int index;

  ScrollMenuItemEvent({this.index});
}
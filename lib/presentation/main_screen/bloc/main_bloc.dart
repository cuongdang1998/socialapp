import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/main_screen/ui/widget/bottom_menu_model.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    selectedItem = menuItems.first;
  }

  var menuItems = [
    BottomMenuItem.HOME,
    BottomMenuItem.FEED,
    BottomMenuItem.CHAT
  ];

  PageController pageController = PageController(initialPage: 0);

  BottomMenuItem selectedItem;

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is SelectMenuItemEvent) {
      selectPage(event.index);
      yield SelectIndexState();
    }
    if (event is ScrollMenuItemEvent) {
      selectedItem = menuItems[event.index];
      yield ScrollIndexState();
    }
  }

  void selectPage(int index) {
    selectedItem = menuItems[index];
    pageController.animateToPage(
      index,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeIn,
    );
  }

  void loadData() {
    selectedItem = menuItems[pageController.page.toInt()];
    menuItems = [BottomMenuItem.HOME, BottomMenuItem.FEED];
    pageController = PageController(initialPage: 0);
  }
}

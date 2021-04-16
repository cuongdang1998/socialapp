import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/config/themes.dart';
import 'package:social_app/presentation/main_screen/bloc/main_bloc.dart';
import 'package:social_app/presentation/main_screen/ui/widget/bottom_menu_model.dart';
import 'widget/bottom_menu_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainBloc bloc;

  @override
  void initState() {
    bloc = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<MainBloc, MainState>(
                listener: (context, state) {},
                buildWhen: (pre, cur) {
                  if (cur is ScrollIndexState) {
                    return false;
                  }
                  return true;
                },
                builder: (context, state) {
                  return PageView(
                    controller: bloc.pageController,
                    onPageChanged: (index) {
                      bloc.add(ScrollMenuItemEvent(index: index));
                    },
                    children: bloc.menuItems.map((e) => e.page).toList(),
                  );
                }),
          ),
          const BottomMenuWidget()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/main_screen/bloc/main_bloc.dart';
import 'package:social_app/presentation/main_screen/ui/widget/menu_item.dart';

import 'bottom_menu_model.dart';

class BottomMenuWidget extends StatefulWidget {
  const BottomMenuWidget({
    Key key,
  }) : super(key: key);

  @override
  _BottomMenuWidgetState createState() => _BottomMenuWidgetState();
}

class _BottomMenuWidgetState extends State<BottomMenuWidget> {
  MainBloc bloc;

  @override
  void initState() {
    bloc = context.read();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      buildWhen: (pre, cur) {
        if (cur is SelectIndexState) {
          return false;
        }
        return true;
      },
      builder: (context, state) {
        return Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: bloc.menuItems
                .map(
                  (e) => MenuItem(
                    icon: e.icon,
                    title: e.title,
                    isSelected: bloc.selectedItem == e,
                    onClick: () {
                      bloc.add(
                        SelectMenuItemEvent(index: e.index),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/themes.dart';
import 'package:social_app/presentation/chat/ui/widget/search_bar.dart';
import 'package:social_app/presentation/chat/ui/widget/top_button_list.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      color: AppTheme().isLightMode(context)
          ? AppColor().focusColorLightMode
          : AppColor().blackBottomBarColor,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [const SearchBar(), const TopButtonList()],
        ),
      ),
    );
  }
}

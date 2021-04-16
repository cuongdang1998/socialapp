import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:social_app/config/colors.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/presentation/chat/bloc/chat_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: const Duration(milliseconds: 100),
      animationDuration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      direction: Direction.horizontal,
      offset: 0.5,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColor().whiteColor)),
        child: TextField(
          maxLines: 1,
          style: AppTextStyle().normalStyle,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            isCollapsed: true,
          ),
          cursorColor: AppColor().whiteColor,
          autofocus: true,
          controller: context.read<ChatBloc>().searchController,
        ),
      ),
    );
  }
}

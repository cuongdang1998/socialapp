import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/config/styles.dart';
import 'package:social_app/gen/assets.gen.dart';
import 'package:social_app/presentation/chat/bloc/chat_bloc.dart';
import 'package:social_app/presentation/chat/ui/widget/search_box.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool isShowSearch = false;
  ChatBloc chatBloc;

  @override
  void initState() {
    chatBloc = BlocProvider.of<ChatBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Chats',
          style: AppTextStyle().headerStyle,
        ),
        Visibility(
          visible: isShowSearch,
          child: const Expanded(
            child: SearchBox(),
          ),
        ),
        GestureDetector(
          onTap: () {
            isShowSearch = !isShowSearch;
            chatBloc.searchController.clear();
            setState(() {});
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Assets.images.iconSearch.svg(
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

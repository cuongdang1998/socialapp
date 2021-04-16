import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/chat/bloc/chat_bloc.dart';
import 'custom_button.dart';

class TopButtonList extends StatelessWidget {
  const TopButtonList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      bloc: context.read<ChatBloc>(),
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                text: 'Recent Message',
                isActive: context.read<ChatBloc>().isSelectMessageButton,
                onTap: () {
                  if (context.read<ChatBloc>().isSelectActiveButton) {
                    context.read<ChatBloc>().add(RecentMessageEvent());
                  }
                },
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: CustomButton(
                  text: 'Active',
                  isActive: context.read<ChatBloc>().isSelectActiveButton,
                  onTap: () {
                    if (context.read<ChatBloc>().isSelectMessageButton) {
                      context.read<ChatBloc>().add(ActiveEvent());
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

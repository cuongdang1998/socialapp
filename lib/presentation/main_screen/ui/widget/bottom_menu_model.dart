import 'package:flutter/material.dart';
import 'package:social_app/gen/assets.gen.dart';
import 'package:social_app/presentation/chat/chat_route.dart';
import 'package:social_app/presentation/feed/feed_route.dart';
import 'package:social_app/presentation/home/home_route.dart';

enum BottomMenuItem { HOME, FEED, CHAT }

extension BottomMenuItemExtends on BottomMenuItem {
  Widget get page {
    switch (this) {
      case BottomMenuItem.HOME:
        return HomeRoute.route;
      case BottomMenuItem.FEED:
        return FeedRoute.route;
      case BottomMenuItem.CHAT:
        return ChatRoute.route;
      default:
        return Container();
    }
  }

  AssetGenImage get icon {
    switch (this) {
      case BottomMenuItem.HOME:
        return Assets.images.home;
      case BottomMenuItem.FEED:
        return Assets.images.feed;
      case BottomMenuItem.CHAT:
        return Assets.images.chatIcon;
      default:
        return Assets.images.home;
    }
  }

  String get title {
    switch (this) {
      case BottomMenuItem.HOME:
        return 'Home';
      case BottomMenuItem.FEED:
        return 'Feed';
      case BottomMenuItem.CHAT:
        return 'Chat';
      default:
        return '';
    }
  }
}

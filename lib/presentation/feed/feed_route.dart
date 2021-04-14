import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/feed/bloc/feed_bloc.dart';
import 'package:social_app/presentation/feed/ui/feed_screen.dart';

class FeedRoute {
  static Widget get route => BlocProvider(
        create: (context) => FeedBloc(),
        child: FeedScreen(),
      );
}

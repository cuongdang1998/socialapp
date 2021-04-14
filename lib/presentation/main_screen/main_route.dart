import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/main_bloc.dart';
import 'ui/main_screen.dart';

class MainRoute {
  static Widget get route => BlocProvider(
        create: (context) => MainBloc(),
        child: MainScreen(),
      );
}

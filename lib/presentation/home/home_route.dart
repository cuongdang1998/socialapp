import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/presentation/home/ui/bloc/home_bloc.dart';
import 'package:social_app/presentation/home/ui/home_screen.dart';

class HomeRoute {
  static Widget get route => BlocProvider(
        create: (context) => HomeBloc(),
        child: HomeScreen(),
      );
}

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/domain/login/repositories/login_repository.dart';
import 'package:social_app/domain/login/usecases/login_usecase.dart';
import 'package:social_app/presentation/login/ui/login_screen.dart';
import 'package:social_app/utils/di/injection.dart';

import 'bloc/login_bloc.dart';

class LoginRoute {
  static Widget get route => BlocProvider(
        create: (context) => LoginBloc(
          LoginUseCase(
            getIt<LoginRepository>(),
          ),
        ),
        child: LoginScreen(),
      );
}

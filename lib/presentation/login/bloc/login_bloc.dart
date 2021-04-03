import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:social_app/data/login/models/request/login_request.dart';
import 'package:social_app/domain/login/usecases/login_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;

  LoginBloc(this.loginUseCase) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginPressed) {
      try {
        yield LoginLoadingState();
        await loginUseCase.login(
          LoginRequest(
            userName: event.userName,
            password: event.password,
          ),
        );
        if (event.isError) {
          yield LoginErrorState();
        } else {
          yield LoginSuccessState();
        }
      } catch (error) {
        print("Error : $error");
      }
    }
  }
}

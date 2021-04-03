import 'package:social_app/data/login/models/request/login_request.dart';
import 'package:social_app/domain/login/entities/user_entitiy.dart';
import 'package:social_app/domain/login/repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository _repository;

  LoginUseCase(this._repository);

  Future<UserEntity> login(LoginRequest request) => _repository.login(request);
}


import 'package:social_app/data/login/models/request/login_request.dart';
import 'package:social_app/data/login/models/response/login_response.dart';

abstract class LoginRepository {
  Future<LoginResponse> login(LoginRequest request);
}

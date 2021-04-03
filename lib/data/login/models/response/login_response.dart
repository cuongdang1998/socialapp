import 'package:json_annotation/json_annotation.dart';
import 'package:social_app/domain/login/entities/user_entitiy.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends UserEntity {
  @override
  final String userName;
  final String email;
  final String phone;
  final String createdAt;

  LoginResponse({
    this.userName,
    this.email,
    this.phone,
    this.createdAt,
  }) : super(
          userPhone: phone,
          userName: userName,
        );

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

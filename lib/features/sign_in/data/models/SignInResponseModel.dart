
import '../../domain/entities/SigninResponseEntity.dart';

class SignInResponseModel extends SignInResponseEntity {
  SignInResponseModel({
    super.message,
    super.user,
    super.token,
  });

  SignInResponseModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? SignInUserModel.fromJson(json['user']) : null;
    token = json['token'];
  }
}

class SignInUserModel extends SignInUserEntity {
  SignInUserModel({
    super.name,
    super.email,
    super.role,
  });

  SignInUserModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
}

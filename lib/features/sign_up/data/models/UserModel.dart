
import '../../domain/entities/UserEntity.dart';

class UserModel extends UserEntity {
  String? message;

  UserModel({
    this.message,
    super.user,
    super.token,
  });

  UserModel.fromJson(dynamic json) {
    message = json['message'];
    user = json['user'] != null ? UserDataModel.fromJson(json['user']) : null;
    token = json['token'];
  }
}

class UserDataModel extends UserDataEntity {
  String? role;

  UserDataModel({
    super.name,
    super.email,
    this.role,
  });

  UserDataModel.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
}

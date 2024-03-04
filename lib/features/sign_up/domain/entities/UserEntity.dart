import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  String? message;
  UserDataEntity? user;
  String? token;

  UserEntity({
    this.message,
    this.user,
    this.token,
  });

  @override
  List<Object?> get props => [user, token];
}

///change the name to userEntity
class UserDataEntity {
  String? name;
  String? email;
  String? role;

  UserDataEntity({
    this.name,
    this.email,
    this.role,
  });

  List<Object?> get props => [name, email, role];
}

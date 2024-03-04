class SignInResponseEntity {
  String? message;
  SignInUserEntity? user;
  String? token;

  SignInResponseEntity({
    this.message,
    this.user,
    this.token,
  });
}

class SignInUserEntity {
  String? name;
  String? email;
  String? role;

  SignInUserEntity({
    this.name,
    this.email,
    this.role,
  });
}

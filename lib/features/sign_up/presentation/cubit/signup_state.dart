part of 'signup_cubit.dart';

abstract class SignUpState {}

class SignupInitialState extends SignUpState {}

class SignupLoadingState extends SignUpState {}

class SignupSuccessState extends SignUpState {
  UserEntity userEntity;

  SignupSuccessState({required this.userEntity});
}

class SignupErrorState extends SignUpState {
  String errorMessage;

  SignupErrorState({required this.errorMessage});
}

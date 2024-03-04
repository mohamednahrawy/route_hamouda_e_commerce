part of 'sign_in_cubit.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoadingState extends SignInState {}

class SignInSuccessState extends SignInState {
  SignInResponseEntity responseEntity;

  SignInSuccessState({required this.responseEntity});
}

class SignInErrorState extends SignInState {
  String errorMessage;

  SignInErrorState({required this.errorMessage});
}

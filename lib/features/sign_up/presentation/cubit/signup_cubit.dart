import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import '../../domain/entities/SignupRequestModel.dart';
import '../../domain/entities/UserEntity.dart';
import '../../domain/use_cases/signup_use_case.dart';

part 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignupUseCase signupUseCase;

  SignUpCubit({required this.signupUseCase}) : super(SignupInitialState());

  var formKey = GlobalKey<FormState>();

  Future<void> signup(SignUpRequestModel requestModel) async {
    requestModel = SignUpRequestModel(
        name: "mohamed ahmed4",
        email: "mohamed.ahmed3334@gmail.com",
        password: "Ahmed@123",
        rePassword: "Ahmed@123",
        phone: "01000920324");
    var either = await signupUseCase.call(requestModel: requestModel);
    either.fold(
        (l) => emit(SignupErrorState(errorMessage: l.errorMessage ?? '')),
        (r) => emit(SignupSuccessState(userEntity: r)));
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/presentation/pages/sign_up_screen.dart';
import '../../domain/entities/SignInRequest.dart';
import '../../domain/entities/SigninResponseEntity.dart';
import '../../domain/use_cases/sign_in_use_case.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInUseCase useCase;

  SignInCubit({required this.useCase}) : super(SignInInitial());

  // static SignInCubit get(context) => BlocProvider.of(context);
  final formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  SignInRequest? signInRequest;

  Future<void> signIn(SignInRequest? signInRequest, context) async {
    emit(SignInLoadingState());
    signInRequest = SignInRequest(
        email: userNameController.text, password: passwordController.text);
    var either = await useCase.call(signInRequest);
    either.fold(
        (l) => emit(SignInErrorState(errorMessage: l.errorMessage ?? '')), (r) {
      emit(SignInSuccessState(responseEntity: r));
    });
  }
}

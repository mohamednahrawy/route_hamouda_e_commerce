import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/SignInRequest.dart';
import '../entities/SigninResponseEntity.dart';
import '../repositories/sign_in_repository.dart';

class SignInUseCase {
  SignInRepository signInRepository;

  SignInUseCase({required this.signInRepository});

  Future<Either<Failure, SignInResponseEntity>> call(
      SignInRequest signInRequest) async {
    return await signInRepository.signIn(signInRequest);
  }
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/SignupRequestModel.dart';
import '../entities/UserEntity.dart';
import '../repositories/signup_repository.dart';

class SignupUseCase {
  SignUpRepo repository;

  SignupUseCase(this.repository);

  Future<Either<Failure, UserEntity>> call(
      {required SignUpRequestModel requestModel}) async {
    return await repository.signup(requestModel: requestModel );
  }
}

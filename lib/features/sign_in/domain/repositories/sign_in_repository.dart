import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/SignInRequest.dart';
import '../entities/SigninResponseEntity.dart';

abstract class SignInRepository {
  Future<Either<Failure, SignInResponseEntity>> signIn(
      SignInRequest signInRequest);
}

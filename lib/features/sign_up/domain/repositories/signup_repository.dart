import '../../../../core/error/failure.dart';
import '../entities/SignupRequestModel.dart';
import '../entities/UserEntity.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepo {
  Future<Either<Failure, UserEntity>> signup(
      {required SignUpRequestModel requestModel});
}

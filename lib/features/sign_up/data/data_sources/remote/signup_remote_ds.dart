import 'package:dartz/dartz.dart';
import '../../../../../core/error/failure.dart';
import '../../../domain/entities/SignupRequestModel.dart';
import '../../models/UserModel.dart';

abstract class SignUpRemoteDS {
  Future<Either<Failure, UserModel>> signup(
      {required SignUpRequestModel requestModel});
}

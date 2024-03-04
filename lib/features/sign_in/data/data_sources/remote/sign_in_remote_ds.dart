import 'package:dartz/dartz.dart';
import '../../../../../core/error/failure.dart';
import '../../../domain/entities/SignInRequest.dart';
import '../../models/SignInResponseModel.dart';

abstract class SignInRemoteDs {
  Future<Either<Failure, SignInResponseModel>> signIn(
      SignInRequest signInRequest);
}

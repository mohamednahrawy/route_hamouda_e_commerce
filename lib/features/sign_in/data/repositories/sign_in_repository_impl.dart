import 'package:dartz/dartz.dart';
import 'package:route_e_commerce_mohamed_hamouda/core/error/failure.dart';

import '../../domain/entities/SignInRequest.dart';
import '../../domain/repositories/sign_in_repository.dart';
import '../data_sources/remote/sign_in_remote_ds.dart';
import '../models/SignInResponseModel.dart';

class SignInRepositoryImpl implements SignInRepository {
  SignInRemoteDs remoteDs;

  SignInRepositoryImpl({required this.remoteDs});

  @override
  Future<Either<Failure, SignInResponseModel>> signIn(
      SignInRequest signInRequest) async {
    return await remoteDs.signIn(signInRequest);
  }
}

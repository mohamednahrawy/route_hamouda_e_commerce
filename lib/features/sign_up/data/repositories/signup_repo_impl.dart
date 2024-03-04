import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/SignupRequestModel.dart';
import '../../domain/repositories/signup_repository.dart';
import '../data_sources/remote/signup_remote_ds.dart';
import '../models/UserModel.dart';

class SignupRepoImpl implements SignUpRepo {
  SignUpRemoteDS remoteDs;

  SignupRepoImpl(this.remoteDs);

  @override
  Future<Either<Failure, UserModel>> signup(
      {required SignUpRequestModel requestModel}) {
    return remoteDs.signup(requestModel: requestModel);
  }
}

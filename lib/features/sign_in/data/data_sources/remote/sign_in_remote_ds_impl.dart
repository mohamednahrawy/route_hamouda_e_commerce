import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_e_commerce_mohamed_hamouda/core/error/failure.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_in/data/data_sources/remote/sign_in_remote_ds.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/utils/constatnts.dart';
import '../../../domain/entities/SignInRequest.dart';
import '../../models/SignInResponseModel.dart';

class SignInRemoteDsImpl extends SignInRemoteDs {
  ApiManager apiManager;

  SignInRemoteDsImpl({required this.apiManager});

  @override
  Future<Either<Failure, SignInResponseModel>> signIn(
      SignInRequest signInRequest) async {
    try {
      Response response =
          await apiManager.postData(Constants.signIn, signInRequest.toJson());
      SignInResponseModel responseModel =
          SignInResponseModel.fromJson(response.data);
      return Right(responseModel);
    } catch (e) {
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}

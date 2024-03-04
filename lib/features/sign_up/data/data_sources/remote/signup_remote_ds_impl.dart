import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:route_e_commerce_mohamed_hamouda/features/sign_up/data/data_sources/remote/signup_remote_ds.dart';
import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/error/failure.dart';
import '../../../domain/entities/SignupRequestModel.dart';
import '../../models/UserModel.dart';

class SignUpRemoteDSImpl implements SignUpRemoteDS {
  ApiManager apiManager;

  SignUpRemoteDSImpl({required this.apiManager});

  @override
  Future<Either<Failure, UserModel>> signup(
      {required SignUpRequestModel requestModel}) async {
    try {
      Response response =
          await apiManager.postData(EndPoints.signup, requestModel.toJson());
      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}

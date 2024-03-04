import 'package:dio/dio.dart';
import 'package:route_e_commerce_mohamed_hamouda/core/utils/constatnts.dart';

class ApiManager {
  /// the difference is object of Dio
  /// it handle the the url and you dnt need to convert it to URi
  final dio = Dio();

  Future<Response> getData(String endPoint,
  {Map<String, dynamic>? queryParameters}) {
    return dio.get(Constants.baseUrl + endPoint,
        queryParameters: queryParameters);
  }

  Future<Response> postData(String endPoint,
      Map<String, dynamic>? requestModel) {
    return dio.post(Constants.baseUrl + endPoint,
        data: requestModel);
  }
}

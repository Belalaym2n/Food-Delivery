import 'package:dio/dio.dart';

import '../utils/constants.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  // static void initDio(){
  //   dio=Dio();
  // }
  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? data}) {
    return dio.get(Constants.baseURl + endPoint, queryParameters: data);
  }

  Future<Response> postData(
      {required String endPoint,
      required Map<String, dynamic> body,
      String? token}) {
    return    dio.post(Constants.baseURl + endPoint,
        data: body, options: Options(headers: {"token": token}));
  }
}

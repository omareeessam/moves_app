import 'package:dio/dio.dart';
import 'package:teest_apiiii/constants/constant.dart';

class MyDio {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required endPoint, required Map<String, dynamic>? query}
      ) async {
    return dio!.get(endPoint, queryParameters: query);
  }
}
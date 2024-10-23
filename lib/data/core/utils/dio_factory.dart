import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../app/constants.dart';
import 'api_routes/api_routes.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String acceptLanguage = "Accept-Language";
const String authorization = "authorization";

class DioFactory {
  DioFactory();

  Dio dio = Dio();

  Future<Dio> getDio() async {
    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      // AUTHORIZATION: token!,
    };

    dio.options = BaseOptions(
        baseUrl: AppUrls.baseUrl,
        headers: headers,
        receiveTimeout: const Duration(seconds: Constants.apiTimeOut),
        sendTimeout: const Duration(seconds: Constants.apiTimeOut));

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ));
    }

    return dio;
  }

  void interceptAccessToken() {
    dio.interceptors.add(AccessTokenInterceptor());
  }
}

class AccessTokenInterceptor extends Interceptor {
  AccessTokenInterceptor();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // String? userToken = await instance<AppPreferences>()
    //     .getValue<String?>(AppPreferences.accessTokenKey);
    // if (userToken != null) {
    //   options.headers[authorization] = "Bearer $userToken";
    // }
    return handler.next(options);
  }
}

import 'package:dio/dio.dart';

import '../models/base_response/base_response.dart';
import 'app_api_helper.dart';

class AppApiHelperImpl implements AppApiHelper {
  Dio get dio => _dio;

  final Dio _dio;
  String? userToken;

  AppApiHelperImpl(this._dio);

  injectTokenInHeader() async {
    // userToken =
    //     di<AppPreferences>().getValue<String>(AppPreferences.accessTokenKey);
    //
    // if (userToken != null) {
    //   _dio.options.headers.addAll({"Authorization": "Bearer ${userToken!}"});
    // }
    // di<DioFactory>().interceptAccessToken();
  }

  @override
  Future<BaseResponse<T>> performPostRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters,
      bool injectToken = true}) async {
    if (injectToken) await injectTokenInHeader();
    final response = await dio.post(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    print("${response.data}");
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPostFormDataRequest<T>({
    required String endpoint,
    required T Function(Map<String, dynamic>) fromJson,
    required FormData data,
    Map<String, dynamic>? queryParameters,
  }) async {
    await injectTokenInHeader();
    final response = await dio.post(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPutRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      required Map<String, dynamic> data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.put(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPutFormDataRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      required FormData data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.put(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPatchFormDataRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      required FormData? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.patch(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPatchRequestJSON<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.patch(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performDeleteRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.delete(endpoint,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as Map<String, dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performGetRequest<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.get(endpoint,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          headers: _dio.options.headers,
        ));
    // log("tell me the response : ${response}");
    final baseResponse = BaseResponse<T>.fromJson(response.data!, (json) {
      // log('tell me the json : $json');
      return fromJson(json is Map<String, dynamic> ? json : {});
    });

    // log("tell me the baseResponse : ${baseResponse.data}");

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performGetListRequest<T>(
      {required String endpoint,
      required T Function(List<dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.get(endpoint,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as List<dynamic>));

    return baseResponse;
  }

  @override
  Future<BaseResponse<T>> performPostListRequest<T>(
      {required String endpoint,
      required T Function(List<dynamic>) fromJson,
      Map<String, dynamic>? data,
      Map<String, dynamic>? queryParameters}) async {
    await injectTokenInHeader();
    final response = await dio.post(endpoint,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          headers: _dio.options.headers,
        ));
    final baseResponse = BaseResponse<T>.fromJson(
        response.data!, (json) => fromJson(json as List<dynamic>));

    return baseResponse;
  }
}

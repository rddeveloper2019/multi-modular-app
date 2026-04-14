import 'package:data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      applicationJson: 'your_access_token', //TODO
      defaultLanguage: 'app-language', //TODO
      clientId: 'app_client-id', //TODO
    };

    dio.options = BaseOptions(
      baseUrl: "your_base_url",
      headers: headers,
      receiveTimeout: const Duration(seconds: 60),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
        ),
      );
    }

    return dio;
  }
}

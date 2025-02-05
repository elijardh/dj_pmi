import 'dart:developer';

import 'package:dio/dio.dart';

class DiagnosticInterceptor extends Interceptor {
  final bool showLogs;

  DiagnosticInterceptor({this.showLogs = true});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (showLogs) log('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (showLogs) log('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path} \n \n BODY ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    if (showLogs) log('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}

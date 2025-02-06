import 'package:dio/dio.dart';
import 'package:dj_pmi/common/configurations/configurations.dart';
import 'package:dj_pmi/common/models/models.dart';

import 'exception.dart';
import 'interceptors.dart';

class ClientOptions {
  final Map<String, dynamic>? headers;
  final String? contentType;

  /// Response timeout in milliseconds
  final int? timeout;

  ClientOptions({this.headers, this.contentType, this.timeout});
}

class HttpClient implements RemoteDataProvider {
  final _options = BaseOptions(
    baseUrl: Configurations.baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );

  late Dio _client;

  HttpClient() {
    _client = Dio(_options);
    _client.interceptors.add(
      DiagnosticInterceptor(
        showLogs: true, // TODO: set based on environment
      ),
    );
  }

  Options _makeOptions(ClientOptions? options) {
    return Options(
      headers: options?.headers,
      contentType: options?.contentType,
      receiveTimeout: Duration(
        milliseconds:
            options?.timeout ?? _options.receiveTimeout?.inMilliseconds ?? 3000,
      ),
    );
  }

  ClientResponse _handleError(DioException e) {
    var err = ClientException.fromDioException(e);
    ClientResponse res = ClientResponse(
      success: false,
      data: null,
      message: err.message,
      errorData: e.response?.data,
    );

    return res;
  }

  Future<ClientResponse> _post(
    String path, {
    Map<String, dynamic>? data,
    ClientOptions? options,
  }) async {
    try {
      var res =
          await _client.post(path, data: data, options: _makeOptions(options));

      return ClientResponse.fromJson(res.data as Map<String, dynamic>);
    } on DioException catch (e) {
      return Future.error(_handleError(e));
    }
  }

  @override
  Future<ClientResponse> post(
    String path, {
    Map<String, dynamic>? data,
    ClientOptions? options,
  }) async {
    // TODO: include formdata processing
    return _post(path, data: data, options: options);
  }

  @override
  Future<ClientResponse> get(String path) async {
    try {
      var res = await _client.get(path);
      return ClientResponse.fromJson(res.data as Map<String, dynamic>);
    } on DioException catch (e) {
      return Future.error(_handleError(e));
    }
  }

  /// Converts JSON [data] to [FormData].
  /// Also handles the processing of [file] if available
  /// and adds it to the [FormData] generated using the property [name],
  static Future<FormData> getFormData(Map<String, dynamic> data,
      {String? file, String name = 'image'}) async {
    if (file != null) {
      var mpFile = await MultipartFile.fromFile(file);
      data[name] = mpFile;
    }
    return FormData.fromMap(data);
  }
}

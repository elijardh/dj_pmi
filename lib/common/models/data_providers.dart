abstract class RemoteDataProvider {
  Future<ClientResponse> post(String path, {Map<String, dynamic>? data});

  Future<ClientResponse> get(String path);
}

abstract class LocalDataProvider {
  Future<Map<String, dynamic>?> get(String key);

  Future<void> set(String key, Map<String, dynamic> data);
}

/// This is a generic response model that will be returned by the[HttpClient].
/// The individual feature api can handle the response in their own way.
class ClientResponse {
  final bool success;
  final dynamic data;
  final dynamic errorData;
  String message; // not final to make it easy to format message

  ClientResponse({
    this.data,
    required this.message,
    required this.success,
    this.errorData,
  });

  factory ClientResponse.fromJson(Map<String, dynamic> json) => ClientResponse(
        data: json['data'],
        message: json['message'] as String,
        success: json['success'] as bool,
        errorData: json['error'] as dynamic,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
      'success': success,
      'data': data,
      'error': errorData,
      'message': message,
    };
}


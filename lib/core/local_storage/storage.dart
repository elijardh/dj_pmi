import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

typedef JsonConverter = Map<String, dynamic> Function(String);

abstract class LocalStorage {
  Future<String?> getValue(String key);
  Future<Map<String, dynamic>?> getValueAsMap(String key,
      {JsonConverter? converter});
  Future<void> storeValue({required String key, required String value});
  Future<void> deleteValue(String key);
  Future<void> deleteAll();
}

class LocalStorageImpl extends LocalStorage {
  final _storage = const FlutterSecureStorage();

  @override
  Future<void> deleteAll() async {
    return _storage.deleteAll();
  }

  @override
  Future<void> deleteValue(String key) async {
    return _storage.delete(key: key);
  }

  @override
  Future<String?> getValue(String key) {
    return _storage.read(key: key);
  }

  @override
  Future<void> storeValue({required String key, required String value}) {
    return _storage.write(key: key, value: value);
  }

  @override
  Future<Map<String, dynamic>?> getValueAsMap(String key,
      {JsonConverter? converter}) async {
    final strValue = await getValue(key);
    if (strValue == null) {
      return null;
    }

    if (converter != null) {
      return converter(strValue);
    }

    return jsonDecode(strValue) as Map<String, dynamic>;
  }
}

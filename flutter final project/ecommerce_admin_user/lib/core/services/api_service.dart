import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../config/api_config.dart';

class ApiService {
  final _client = http.Client();
  Future<SharedPreferences> get _prefs => SharedPreferences.getInstance();

  Future<String?> get _token async {
    final prefs = await _prefs;
    return prefs.getString('token');
  }

  Future<Map<String, String>> get _headers async {
    final token = await _token;
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  Future<dynamic> get(String endpoint) async {
    final response = await _client.get(
      Uri.parse(ApiConfig.baseUrl + endpoint),
      headers: await _headers,
    );
    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, dynamic data) async {
    final response = await _client.post(
      Uri.parse(ApiConfig.baseUrl + endpoint),
      headers: await _headers,
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  Future<dynamic> put(String endpoint, dynamic data) async {
    final response = await _client.put(
      Uri.parse(ApiConfig.baseUrl + endpoint),
      headers: await _headers,
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  Future<dynamic> delete(String endpoint) async {
    final response = await _client.delete(
      Uri.parse(ApiConfig.baseUrl + endpoint),
      headers: await _headers,
    );
    return _handleResponse(response);
  }

  Future<dynamic> multipartRequest(
    String endpoint,
    String method,
    Map<String, String> fields,
    Map<String, String> files,
  ) async {
    final uri = Uri.parse(ApiConfig.baseUrl + endpoint);
    final request = http.MultipartRequest(method, uri);

    request.headers.addAll(await _headers);
    request.fields.addAll(fields);

    for (var file in files.entries) {
      request.files.add(await http.MultipartFile.fromPath(
        file.key,
        file.value,
      ));
    }

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isEmpty) return null;
      return json.decode(response.body);
    } else {
      final body = response.body.isNotEmpty ? json.decode(response.body) : null;
      throw ApiException(
        statusCode: response.statusCode,
        message: body?['detail'] ?? 'Something went wrong',
      );
    }
  }

  void dispose() {
    _client.close();
  }
}

class ApiException implements Exception {
  final int statusCode;
  final String message;

  ApiException({required this.statusCode, required this.message});

  @override
  String toString() => 'ApiException: $statusCode - $message';
}

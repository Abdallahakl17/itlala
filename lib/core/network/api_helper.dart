import 'dart:async';   
import 'package:dio/dio.dart';
import 'api_response.dart';
import 'retry_interceptor.dart';

// Enum to represent API response status
enum Status { completed, loading, error, networkError }

class ApiHelper {
  static late Dio dio;

  // Initialize Dio with base URL, options, and RetryInterceptor
  static void init() {
    dio = Dio(BaseOptions(
      //متنساش تغير اللينك
      baseUrl: 'https://api.themoviedb.org/3/',
      receiveDataWhenStatusError: true,
    ));

    // Add RetryInterceptor to handle request retries
    dio.interceptors.add(RetryInterceptor(dio: dio));
  }

  // Handle GET request
  static Future<ApiResponse> getData({
    required String path,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.get(path, queryParameters: query);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle POST request
  static Future<ApiResponse> postData({
    required String path,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json; charset=utf-8',
    };

    try {
      final response = await dio.post(path, queryParameters: query, data: data);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle PUT request
  static Future<ApiResponse> putData({
    required String path,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json; charset=utf-8',
    };

    try {
      final response = await dio.put(path, queryParameters: query, data: data);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle DELETE request
  static Future<ApiResponse> deleteData({
    required String path,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };

    try {
      final response = await dio.delete(path, queryParameters: query);
      return ApiResponse.completed(response.data);
    } catch (e) {
      return _handleError(e);
    }
  }

  // Handle errors and return appropriate ApiResponse
  static ApiResponse _handleError(dynamic e) {
    if (e is DioException) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        return ApiResponse.networkError('Network timeout. Please try again.');
      } else if (e.type == DioExceptionType.badResponse) {
        return ApiResponse.error(
            'Received invalid status code: ${e.response?.statusCode}');
      } else if (e.type == DioExceptionType.cancel) {
        return ApiResponse.error('Request to API server was cancelled.');
      } else {
        return ApiResponse.error('Unexpected error occurred.');
      }
    } else {
      return ApiResponse.error('Unexpected error occurred.');
    }
  }
}
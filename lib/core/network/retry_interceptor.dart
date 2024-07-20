import 'dart:async';
import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries;
  final int retryInterval;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 3,
    this.retryInterval = 1000,
  });

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    var retries = 0;
    while (retries < maxRetries && _shouldRetry(err)) {
      try {
        retries++;
        print('Retrying request... Attempt: $retries');
        await Future.delayed(Duration(milliseconds: retryInterval));
        final response = await _retry(err);
        return handler.resolve(response);
      } catch (e) {
        if (retries >= maxRetries) {
          return handler.next(err);
        }
      }
    }
    return handler.next(err);
  }

  bool _shouldRetry(DioException err) {
    return err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout ||
        err.type == DioExceptionType.unknown;
  }

  Future<Response> _retry(DioException err) async {
    final options = err.requestOptions;
    return await dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      cancelToken: options.cancelToken,
      options: Options(
        method: options.method,
        headers: options.headers,
      ),
      onReceiveProgress: options.onReceiveProgress,
    );
  }
}

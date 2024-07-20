// Class to represent API response
import 'package:itlala/core/network/api_helper.dart';

class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.loading(this.message) : status = Status.loading;
  ApiResponse.error(this.message) : status = Status.error;
  ApiResponse.networkError(this.message) : status = Status.networkError;

  @override
  String toString() {
    return 'ApiResponse{status: $status, data: $data, message: $message}';
  }
}

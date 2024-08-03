import 'package:equatable/equatable.dart';

abstract class Failu extends Equatable {
  String message;
  Failu({required this.message});
       List<Object?> get props => [   message];  
} 
class ServerFailur extends Failu {
  ServerFailur({required super.message});
  
}

class ErrorEx extends Equatable {
  bool status;
  String message;
  ErrorEx({required this.status, required this.message});
  @override
  List<Object?> get props => [status, message];
  factory ErrorEx.fromJson(Map<String, dynamic> json) {
    return ErrorEx(
      status: json['status'],
      message: json['message'],
    );
  }
}

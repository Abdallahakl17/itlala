import 'package:itlala/domain/enitites/auth.dart';

class AuthModel extends AuthBaseModel {
  const AuthModel(
      {required super.status, required super.message, required super.authdata});
  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      status: json['status'],
      message: json['message'],
      authdata: Authdata(
        name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      email: json['email'] ?? '',
      image: json['image'],
      token: json['token'] ?? '',
      ),
    );
  }
}

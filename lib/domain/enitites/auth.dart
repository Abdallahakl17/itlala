import 'package:equatable/equatable.dart';

class AuthBaseModel extends Equatable {
  final bool status;
  final String message;
  final Authdata authdata;
  const AuthBaseModel(
      {required this.status, required this.message, required this.authdata});
  @override
  List<Object?> get props => [status, message];
}

class Authdata extends Equatable {
  final String name;
  final String phone;
  final String email;
  final String? image;
  final String token;
  const Authdata(
      {required this.name,
      required this.phone,
      required this.email,
       this.image,
      required this.token});

  @override
  List<Object?> get props => [name, phone, email, image, token];
}

import 'package:dartz/dartz.dart';
import 'package:itlala/core/errors/exceptions.dart';
import 'package:itlala/core/errors/failurmodel.dart';
import 'package:itlala/domain/enitites/auth.dart';
import 'package:itlala/domain/repository/auth_repo_base.dart';

class AuthRepo extends AuthRepoBase {
  final AuthRepoBase authRepoBase;
  AuthRepo({required this.authRepoBase});

  @override
  Future<Either<Failu, AuthBaseModel>> login(
      {required String email, required String password}) async {
    final result = await authRepoBase.login(email: email, password: password);
    try {
      print(result.toString());
      return right(result as AuthBaseModel);
    } on ExceptionsServer catch (e) {
      print(ServerFailur(message: e.errorEx.message.toString()));

      return left(ServerFailur(message: e.errorEx.message));
    }
  }

  @override
  Future<Either<Failu, AuthBaseModel>> register(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    final result = await authRepoBase.register(
        email: email, password: password, name: name, phone: phone);

    try {
      print(result.toString());
      return right(result as AuthBaseModel);
    } on ExceptionsServer catch (e) {
      print(ServerFailur(message: e.errorEx.message.toString()));

      return left(ServerFailur(message: e.errorEx.message));
    }
  }
}

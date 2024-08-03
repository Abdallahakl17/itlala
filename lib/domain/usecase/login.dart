import 'package:dartz/dartz.dart';
import 'package:itlala/core/errors/failurmodel.dart';
import 'package:itlala/domain/enitites/auth.dart';
import 'package:itlala/domain/repository/auth_repo_base.dart';

class LoginUseCase {
  final AuthRepoBase authRepo;
  LoginUseCase(this.authRepo);
  Future<Either<Failu, AuthBaseModel>> login(
      {required String email, required String password}) async {
 return   await authRepo.login(email: email, password: password);
  }
}

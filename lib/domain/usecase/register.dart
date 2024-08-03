import 'package:dartz/dartz.dart';
import 'package:itlala/core/errors/failurmodel.dart';
import 'package:itlala/domain/enitites/auth.dart';
import 'package:itlala/domain/repository/auth_repo_base.dart';

class Register {
  final AuthRepoBase authRepo;
  Register(this.authRepo);
 Future<Either<Failu, AuthBaseModel>> register(
      {required String email,
      required String password,
      required String name,
      required String phone}) async {
    return await authRepo.register(
        email: email, password: password, name: name, phone: phone);
  }
}

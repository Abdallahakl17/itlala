// contract 
 
import 'package:dartz/dartz.dart';
import 'package:itlala/core/errors/failurmodel.dart';
import 'package:itlala/domain/enitites/auth.dart';

abstract class AuthRepoBase {
  Future<Either< Failu ,AuthBaseModel >> login({required String email, required String password});
  Future<Either< Failu ,AuthBaseModel >> register({required String email, required String password,required String name ,required String phone});
}
import 'package:itlala/core/errors/exceptions.dart';
import 'package:itlala/core/errors/failurmodel.dart';
import 'package:itlala/core/network/api_const.dart';
import 'package:itlala/core/network/api_helper.dart';
import 'package:itlala/data/model/auth_model.dart';

abstract class BaseRemoteDataSource {
  Future<AuthModel> login(String email, String password);
}

class AuthRemoteDatasource extends BaseRemoteDataSource {
  @override
  Future<AuthModel> login(String email, String password) async {
    final data = {
      'email': email,
      'password': password,
    };

    final response = await ApiHelper.postData(
      path: ApiConst.login,
      data: data,
    );

    if (response.status == 200) {
      return AuthModel.fromJson(response.data);
    } else {
      throw ExceptionsServer(errorEx: ErrorEx.fromJson(response.data));
    }
  }
}

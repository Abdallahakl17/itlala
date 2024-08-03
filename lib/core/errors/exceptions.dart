import 'package:itlala/core/errors/failurmodel.dart';

class ExceptionsServer implements Exception {
  final ErrorEx errorEx;
  ExceptionsServer({required this.errorEx});
}

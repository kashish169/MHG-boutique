import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class SignInRepo {
  Future<Either<Failure, ApiResponse>> signIn({required String body});
  Future<Either<Failure, ApiResponse>> socialSignIn({required String body});
  Future<Either<Failure, ApiResponse>> signInWithOutOtp({required String body});
}

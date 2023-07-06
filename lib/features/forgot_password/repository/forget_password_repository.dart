import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';


abstract class ForgetPasswordRepo {
  Future<Either<Failure, ApiResponse>> forgetPassword({required String body});
  Future<Either<Failure, ApiResponse>> resetPassword({required String body});

}
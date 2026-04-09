import 'dart:io';

import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class SignUpRepo {
  Future<Either<Failure, ApiResponse>> signUp({
    required String body,
  });
  // Future<Either<Failure, ApiResponse>> uploadFiles({required Map<String,String> body,required Map<String,File> files});
}

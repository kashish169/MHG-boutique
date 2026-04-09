import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class VerificationRepo {
  Future<Either<Failure, ApiResponse>> sendOtp({
    required String body,
  });
  Future<Either<Failure, ApiResponse>> verifyOtp({
    required String body,
  });
  // Future<Either<Failure, ApiResponse>> uploadFiles({required Map<String,String> body,required Map<String,File> files});
}

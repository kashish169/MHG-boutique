import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class SettingsRepo {
  Future<Either<Failure, ApiResponse>> getTermsAndConditions();
  Future<Either<Failure, ApiResponse>> getPraivacyPolicy();
  Future<Either<Failure, ApiResponse>> updateNotification(Object body);
}

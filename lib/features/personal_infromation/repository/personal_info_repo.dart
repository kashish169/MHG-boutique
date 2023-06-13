import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class PersonalInfoRepo {
  Future<Either<Failure, ApiResponse>> updateData({required String body});
  Future<Either<Failure, ApiResponse>> deleteData();
}

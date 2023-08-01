import 'package:dartz/dartz.dart';
import 'package:mhg/core/models/api_response.dart';
import 'package:mhg/core/models/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ApiResponse>> getInfo();
  Future<Either<Failure, ApiResponse>> sendHearts(Object body);
  Future<Either<Failure, ApiResponse>> sendFeedBack(Object body);
  Future<Either<Failure, ApiResponse>> logOut();
}

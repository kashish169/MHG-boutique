import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class SwipRepository {
  Future<Either<Failure, ApiResponse>> getSwipProducts();
  Future<Either<Failure, ApiResponse>> prefProduct({required String body});
}

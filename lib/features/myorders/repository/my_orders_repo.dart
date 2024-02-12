import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class MyOrdersRepository {
  Future<Either<Failure, ApiResponse>> getOrders();
  Future<Either<Failure, ApiResponse>> cancelOrder({
    required Object body,
  });
  Future<Either<Failure, ApiResponse>> returnOrder({
    required Object body,
  });
}

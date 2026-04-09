import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class MyCartRepository {
  Future<Either<Failure, ApiResponse>> getCart();

  Future<Either<Failure, ApiResponse>> deleteCartItem({
    required Object body,
  });

  Future<Either<Failure, ApiResponse>> increaseCartItem({
    required Object body,
  });

  Future<Either<Failure, ApiResponse>> decreaseCartItem({
    required Object body,
  });
}

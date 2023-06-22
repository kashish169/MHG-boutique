import 'package:dartz/dartz.dart';
import '../../../../core/models/api_response.dart';
import '../../../../core/models/failure.dart';

abstract class WishListRepository {
  Future<Either<Failure, ApiResponse>> addToWishList({
    required Object body,
  });

  Future<Either<Failure, ApiResponse>> removeFromWishList({
    required Object body,
  });
  Future<Either<Failure, ApiResponse>> addToBag({
    required Object body,
  });
  Future<Either<Failure, ApiResponse>> getWishListData();
}

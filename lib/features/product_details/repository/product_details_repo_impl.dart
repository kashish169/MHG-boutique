import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class ProductDetailsRepository {
  Future<Either<Failure, ApiResponse>> getProductDetails({
    required int productId,
  });

  Future<Either<Failure, ApiResponse>> addProductToCart({
    required Object body,
  });

  Future<Either<Failure, ApiResponse>> ofsSubscribe({
    required Object body,
  });
  Future<Either<Failure, ApiResponse>> ofsUnSubscribe({
    required Object body,
  });

  Future<Either<Failure, ApiResponse>> getTabbyLink({
    required double price,
  });

  Future<Either<Failure, ApiResponse>> addReview({
    required Object body,
  });
}

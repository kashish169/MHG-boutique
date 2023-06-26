import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class ProductsRepository {
  Future<Either<Failure, ApiResponse>> getCategoryProduct({
    required String query,
    required int featured,
    required int bestSaller,
    required int newArrival,
  });
  Future<Either<Failure, ApiResponse>> getProductTags();
  Future<Either<Failure, ApiResponse>> getBrandsCategories(int brandId);
}

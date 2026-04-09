import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class CategoriesRepository {
  Future<Either<Failure, ApiResponse>> getCategories();
  Future<Either<Failure, ApiResponse>> getBrands();
}

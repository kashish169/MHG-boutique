import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class ProductsRepository {
  Future<Either<Failure, ApiResponse>> getCategoryProduct({required String categoryId,required String page,String? search});
  Future<Either<Failure, ApiResponse>> getProductTags();
}

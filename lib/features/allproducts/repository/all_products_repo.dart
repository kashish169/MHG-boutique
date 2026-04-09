import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class AllProductsRepository {
  Future<Either<Failure, ApiResponse>> getAllProducts({required String query});
}

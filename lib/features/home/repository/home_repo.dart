import 'package:dartz/dartz.dart';
import '../../../core/models/api_response.dart';
import '../../../core/models/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, ApiResponse>> getHome();
}

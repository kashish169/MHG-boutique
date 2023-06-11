import 'dart:io';
import 'package:dartz/dartz.dart';
import '../models/api_response.dart';
import '../models/failure.dart';

abstract class HttpService {
  Future<Either<Failure, ApiResponse>> get({
    required String url,
    bool isAuthorized,
  });

  Future<Either<Failure, ApiResponse>> post({
    required String url,
    bool isAuthorized,
    Object? body,
  });

  Future<Either<Failure, ApiResponse>> delete({
    required String url,
    bool isAuthorized,
    Object? body,
  });

  Future<Either<Failure, ApiResponse>> put({
    required String url,
    bool isAuthorized,
    Object? body,
  });

  Future<Either<Failure, ApiResponse>> patch({
    required String url,
    bool isAuthorized,
    Object? body,
  });

  Future<Either<Failure, ApiResponse>> multiPart({
    required String url,
    Map<String, String>? body,
    bool? isAuthorized,
    Map<String, File>? files,
    bool? isUploadToken,
  });
}

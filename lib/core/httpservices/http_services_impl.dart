import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import '../api/api.dart';
import '../models/api_response.dart';
import 'package:http/http.dart' as http;
import '../models/failure.dart';
import 'http_services_repository.dart';

class HttpServiceImplementation implements HttpService {
  @override
  Future<Either<Failure, ApiResponse>> get({
    required String url,
    bool isAuthorized = false,
  }) async {
    try {
      log("${Api.authorizedheaders}");
      final response = await http
          .get(
            Uri.parse(url.contains('chat') ? url : (Api.baseUrl + url)),
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
          )
          .timeout(const Duration(seconds: 30));
      log("${response.statusCode}");
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('Connection Timeout | $url');
      return Left(TimeoutError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> post({
    required String url,
    bool isAuthorized = false,
    Object? body,
  }) async {
    try {
      log('$body');

      final response = await http
          .post(
            Uri.parse(url.contains('chat') ? url : (Api.baseUrl + url)),
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      log("${response.statusCode}");
      log(response.body);

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('Connection Timeout | $url');
      return Left(TimeoutError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure('$e'));
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> delete({
    required String url,
    bool isAuthorized = false,
    Object? body,
  }) async {
    try {
      log('$body');
      log(Api.baseUrl + url);

      final response = await http
          .delete(
            Uri.parse(Api.baseUrl + url),
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      log("${response.statusCode}");
      log(response.body);

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        log(response.body);
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('Connection Timeout | $url');
      return Left(TimeoutError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure('$e'));
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> put({
    required String url,
    bool isAuthorized = false,
    Object? body,
  }) async {
    try {
      log('$body');
      final response = await http
          .put(
            Uri.parse(Api.baseUrl + url),
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      log("${response.statusCode}");
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure('$e'));
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> patch({
    required String url,
    bool isAuthorized = false,
    Object? body,
  }) async {
    try {
      log('$body');

      final response = await http
          .patch(
            Uri.parse(Api.baseUrl + url),
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      log("${response.statusCode}");
      log(response.body);

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('Connection Timeout | $url');
      return Left(TimeoutError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure('$e'));
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> multiPart({
    required String url,
    Map<String, String>? body,
    bool? isAuthorized,
    Map<String, File>? files,
    bool? isUploadToken,
  }) async {
    late http.Response response;
    http.MultipartRequest request;
    request = http.MultipartRequest(
      'POST',
      Uri.parse(url.contains('chat') ? url : (Api.baseUrl + url)),
    );
    try {
      request.headers.addAll(
        isAuthorized == true ? Api.authorizedheaders : Api.headers,
      );
      if (body != null) request.fields.addAll(body);
      if (files != null) {
        files.forEach((key, value) async {
          request.files.add(await http.MultipartFile.fromPath(key, value.path));
        });
      }
      response = await http.Response.fromStream(await request.send());
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        return Right(ApiResponse(response.statusCode, parsedResponse));
      } else {
        return Left(BadRequestError('${response.statusCode}'));
      }
    } on TimeoutException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } on SocketException catch (e) {
      log('No internet connection | $url');
      return Left(NetworkingError('$e'));
    } catch (e, s) {
      log("$e$s");
      return Left(Failure('$e'));
    }
  }
}

http.Response? handleResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      return response;
    case 201:
      return response;
    case 401:
      return response;
    default:
      return null;
  }
}

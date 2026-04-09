import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mhg/app/app.dart';
import 'package:mhg/features/splash/view/update_view.dart';
import '../api/api.dart';
import '../models/api_response.dart';
import 'package:http/http.dart' as http;
import '../models/failure.dart';
import 'http_services_repository.dart';

class HttpServiceImplementation implements HttpService {
  /// Paths are joined with [Api.baseUrl]. Full `http(s)://` URLs and chat URLs are left as-is.
  String _resolveUrl(String url) {
    if (url.contains('chat')) return url;
    if (url.startsWith('http://') || url.startsWith('https://')) return url;
    return Api.baseUrl + url;
  }

  /// First stack frame outside this file in app code — typically repository / controller.
  String _httpCallerLocation() {
    final frames = StackTrace.current.toString().split('\n');
    for (final line in frames) {
      if (line.contains('http_services_impl.dart')) continue;
      if (line.contains('package:mhg')) {
        return line.trim();
      }
    }
    return '';
  }

  String _formatBody(Object? body) {
    if (body == null) return '(none)';
    if (body is String) {
      if (body.length > 4000) {
        return '${body.substring(0, 4000)}… (truncated, ${body.length} chars)';
      }
      return body;
    }
    if (body is List<int>) {
      return '<binary ${body.length} bytes>';
    }
    return body.toString();
  }

  void _debugLogApiHit({
    required String method,
    required Uri uri,
    Object? body,
    Map<String, String>? multipartFields,
    Map<String, File>? multipartFiles,
  }) {
    final caller = _httpCallerLocation();
    final query = uri.queryParameters;
    final queryStr = query.isEmpty ? '(none)' : jsonEncode(query);
    final buf = StringBuffer()
      ..writeln('[HTTP] ▶ $method ${uri.toString()}')
      ..writeln('  from: ${caller.isEmpty ? '(unknown)' : caller}')
      ..writeln('  query: $queryStr');
    if (multipartFields != null || multipartFiles != null) {
      buf.writeln(
        '  fields: ${multipartFields == null || multipartFields.isEmpty ? '(none)' : jsonEncode(multipartFields)}',
      );
      if (multipartFiles != null && multipartFiles.isNotEmpty) {
        buf.writeln(
          '  files: ${multipartFiles.keys.map((k) => '$k → ${multipartFiles[k]!.path}').join(', ')}',
        );
      }
    } else {
      buf.writeln('  body: ${_formatBody(body)}');
    }
    debugPrint(buf.toString());
  }

  Future checkUpgrade(http.Response? responseData) async {
    if (jsonDecode(responseData!.body)['message'] == App.upgradeMessage) {
      await Get.toNamed(UpdateView.routeName);
    }
  }

  @override
  Future<Either<Failure, ApiResponse>> get({
    required String url,
    bool isAuthorized = false,
  }) async {
    try {
      final uri = Uri.parse(_resolveUrl(url));
      _debugLogApiHit(method: 'GET', uri: uri);
      final response = await http
          .get(
            uri,
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
          )
          .timeout(const Duration(seconds: 40));
      debugPrint('[HTTP] ◀ GET ${response.statusCode} ${uri.toString()}');
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);

      if (responseData != null) {
        if (App.sid.isEmpty) {
          log("HEADERS ${response.headers["set-cookie"]}");
          String sid = response.headers["set-cookie"] ?? "";
          String result = sid.substring(0, sid.indexOf(';'));
          App.sid = result;
        }
        await checkUpgrade(responseData);
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
    } catch (e) {
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
      final uri = Uri.parse(_resolveUrl(url));
      _debugLogApiHit(method: 'POST', uri: uri, body: body);

      final response = await http
          .post(
            uri,
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      debugPrint('[HTTP] ◀ POST ${response.statusCode} ${uri.toString()}');

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        await checkUpgrade(responseData);
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
    } catch (e) {
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
      final uri = Uri.parse(_resolveUrl(url));
      _debugLogApiHit(method: 'DELETE', uri: uri, body: body);

      final response = await http
          .delete(
            uri,
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      debugPrint('[HTTP] ◀ DELETE ${response.statusCode} ${uri.toString()}');

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        await checkUpgrade(responseData);
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
    } catch (e) {
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
      final uri = Uri.parse(_resolveUrl(url));
      _debugLogApiHit(method: 'PUT', uri: uri, body: body);
      final response = await http
          .put(
            uri,
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      debugPrint('[HTTP] ◀ PUT ${response.statusCode} ${uri.toString()}');
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        await checkUpgrade(responseData);
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
    } catch (e) {
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
      final uri = Uri.parse(_resolveUrl(url));
      _debugLogApiHit(method: 'PATCH', uri: uri, body: body);

      final response = await http
          .patch(
            uri,
            headers: isAuthorized == true ? Api.authorizedheaders : Api.headers,
            body: body,
          )
          .timeout(const Duration(seconds: 30));
      debugPrint('[HTTP] ◀ PATCH ${response.statusCode} ${uri.toString()}');

      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        await checkUpgrade(responseData);
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
    } catch (e) {
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
    final uri = Uri.parse(_resolveUrl(url));
    _debugLogApiHit(
      method: 'POST (multipart)',
      uri: uri,
      multipartFields: body,
      multipartFiles: files,
    );
    request = http.MultipartRequest(
      'POST',
      uri,
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
      debugPrint(
        '[HTTP] ◀ POST multipart ${response.statusCode} ${uri.toString()}',
      );
      final parsedResponse = jsonDecode(response.body);
      http.Response? responseData = handleResponse(response);
      if (responseData != null) {
        await checkUpgrade(responseData);
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
    } catch (e) {
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

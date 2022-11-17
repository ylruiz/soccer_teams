import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'api_connection_exception.dart';

class ApiManager {
  ApiManager(this._client);

  final Dio _client;

  Future<Either<ApiConnectionException, Response>> getRequest(
      String url) async {
    final response = await _client.get(url);
    return await _sendResponse(response);
  }

  Future<Either<ApiConnectionException, Response>> _sendResponse(
    Response response,
  ) async {
    return _isSuccessResponse(response.statusCode)
        ? Right(response)
        : Left(
            ApiConnectionException(
              status: response.statusCode ?? -1,
              message: response.statusMessage ?? '',
            ),
          );
  }

  bool _isSuccessResponse(int? statusCode) {
    return statusCode != null && statusCode >= 200 && statusCode < 300;
  }
}

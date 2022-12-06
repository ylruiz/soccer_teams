import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'api_connection_exception.dart';

/// Should handle the API connections depending on the respective
/// request:
/// - GET [getRequest]
/// - POST [postRequest] -> Should be implemented when needed
/// - DELETE [deleteRequest] -> Should be implemented when needed
/// - PUT [putRequest] -> Should be implemented when needed
class ApiManager {
  ApiManager(this._client);

  final Dio _client;

  Future<Either<ApiConnectionException, Response>> getRequest(
      String url) async {
    try {
      final response = await _client.get(url);
      return await _sendResponse(response);
    } catch (error) {
      return const Left(ApiConnectionException(
        errorType: ApiConnectionErrorType.noInternet,
        statusCode: -1,
        statusMessage: '',
      ));
    }
  }

  Future<Either<ApiConnectionException, Response>> _sendResponse(
    Response response,
  ) async {
    // TODO: Check when statusCode & statusstatusMessage can be null.
    final statusCode = response.statusCode;
    final statusstatusMessage = response.statusMessage; 

    if (statusCode != null && statusstatusMessage != null) {
      return _isSuccessResponse(statusCode)
          ? Right(response)
          : Left(
              ApiConnectionException(
                errorType: _getApiConnectionErrorType(statusCode),
                statusCode: statusCode,
                statusMessage: statusstatusMessage,
              ),
            );
    }

    return const Left(
      ApiConnectionException(
        errorType: ApiConnectionErrorType.undefinedError,
        statusCode: -1,
        statusMessage: '',
      ),
    );
  }

  bool _isSuccessResponse(int statusCode) {
    return statusCode >= 200 && statusCode < 300;
  }

  ApiConnectionErrorType _getApiConnectionErrorType(int statusCode) {
    if (statusCode >= 300 && statusCode < 399) {
      return ApiConnectionErrorType.redirection;
    }

    if (statusCode >= 400 && statusCode < 499) {
      return ApiConnectionErrorType.clientError;
    }

    if (statusCode >= 500 && statusCode < 599) {
      return ApiConnectionErrorType.serverError;
    }

    return ApiConnectionErrorType.undefinedError;
  }
}

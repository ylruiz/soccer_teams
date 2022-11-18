import 'package:equatable/equatable.dart';

/// Exception that should be thrown when the response from the client is NOT 
/// successful.
class ApiConnectionException extends Equatable implements Exception {
  const ApiConnectionException({
    required this.status,
    required this.message,
  });

  final int status;
  final String message;

  @override
  List<Object?> get props => [status, message];
}

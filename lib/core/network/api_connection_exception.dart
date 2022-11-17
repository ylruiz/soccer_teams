import 'package:equatable/equatable.dart';

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

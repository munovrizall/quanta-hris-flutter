/// Base class untuk semua exception yang berhubungan dengan API di aplikasi ini.
class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, [this.statusCode]);

  @override
  String toString() => message;
}

/// Dilempar saat server mengembalikan respons 400 (Bad Request).
class BadRequestException extends ApiException {
  BadRequestException(String message) : super(message, 400);
}

/// Dilempar saat server mengembalikan respons 401 (Unauthorized).
class UnauthorizedException extends ApiException {
  UnauthorizedException(String message) : super(message, 401);
}

/// Dilempar saat server mengembalikan respons 404 (Not Found).
class NotFoundException extends ApiException {
  NotFoundException(String message) : super(message, 404);
}

/// Dilempar untuk error server (5xx).
class ServerException extends ApiException {
  ServerException(String message) : super(message, 500);
}

/// Dilempar saat terjadi timeout koneksi.
class TimeoutException extends ApiException {
  TimeoutException(String message) : super(message, 408);
}

/// Dilempar saat tidak ada koneksi internet.
class NoInternetException extends ApiException {
  NoInternetException(super.message);
}

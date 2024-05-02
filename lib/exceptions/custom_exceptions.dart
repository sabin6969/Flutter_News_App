class AppException implements Exception {
  final String message;
  const AppException({required this.message});
}

class BadRequestException extends AppException {
  String? errorMessage;
  BadRequestException({this.errorMessage}) : super(message: "Bad request");
}

class InternalServerError extends AppException {
  String? errorMessage;
  InternalServerError({this.errorMessage})
      : super(message: errorMessage ?? "Internal Server Error");
}

class ClientError extends AppException {
  String? errorMessage;
  ClientError({this.errorMessage})
      : super(message: errorMessage ?? "Client Error");
}

class UnknownError extends AppException {
  String? errorMessage;
  UnknownError({this.errorMessage})
      : super(message: errorMessage ?? "An unknown error occured");
}

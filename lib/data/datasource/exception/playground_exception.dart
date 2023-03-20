class PlaygroundException implements Exception {
  PlaygroundException({
    required this.prefix,
    required this.message,
    required this.errorCode,
    required this.statusCode,
  });

  final String prefix;

  final String message;

  final String? errorCode;

  final int? statusCode;

  @override
  String toString() => '$prefix[$statusCode]: $errorCode - $message';
}

/// HTTP Exception
class PlaygroundApiException extends PlaygroundException {
  PlaygroundApiException({
    required String message,
    required String? errorCode,
    required int? statusCode,
  }) : super(
    prefix: 'APIException',
    message: message,
    errorCode: errorCode ?? 'Unknown',
    statusCode: statusCode,
  );
}

/// Auth Exception
class PlaygroundAuthException extends PlaygroundException {
  PlaygroundAuthException({
    required String message,
    required String? errorCode,
    required int? statusCode,
  }) : super(
    prefix: 'AuthException',
    message: message,
    errorCode: errorCode,
    statusCode: statusCode,
  );
}

/// File Exception
class PlaygroundFileException extends PlaygroundException {
  PlaygroundFileException({
    required String message,
    required String? errorCode,
    required int? statusCode,
  }) : super(
    prefix: 'FileException',
    message: message,
    errorCode: errorCode,
    statusCode: statusCode,
  );
}

class PlaygroundUserException extends PlaygroundException {
  PlaygroundUserException({
    required String message,
    required String? errorCode,
    required int? statusCode,
  }) : super(
    prefix: 'UserException',
    message: message,
    errorCode: errorCode,
    statusCode: statusCode,
  );
}

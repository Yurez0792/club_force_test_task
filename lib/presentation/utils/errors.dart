class Failure {
  final Exception exception;

  Failure({required this.exception});
}

class ServerException implements Exception {
  final String message;

  ServerException({
    this.message = 'Server error',
  });

  @override
  String toString() => message;
}

class DataParsingException implements Exception {
  final String message;

  DataParsingException({
    this.message = 'Data parsing exception',
  });

  @override
  String toString() => message;
}

class NoConnectionException implements Exception {
  final String message;

  NoConnectionException({
    this.message = 'No connection exception',
  });

  @override
  String toString() => message;
}

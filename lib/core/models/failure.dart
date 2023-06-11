class Failure implements Exception {
  final String message;
  Failure(this.message);
}

class TimeoutError implements Failure {
  @override
  final String message;
  TimeoutError(this.message);
}

class NetworkingError implements Failure {
  @override
  final String message;
  NetworkingError(this.message);
}

class BadRequestError implements Failure {
  @override
  final String message;
  BadRequestError(this.message);
}

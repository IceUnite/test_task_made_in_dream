abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure([String? message]) : super(message ?? 'Server error');
}

class NetworkFailure extends Failure {
  const NetworkFailure([String? message]) : super(message ?? 'Network error');
}

class ParsingFailure extends Failure {
  const ParsingFailure([String? message]) : super(message ?? 'Parsing error');
}

class UnknownFailure extends Failure {
  const UnknownFailure([String? message]) : super(message ?? 'Unknown error');
}
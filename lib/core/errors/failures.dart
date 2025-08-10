// Базовый класс для всех Failures
abstract class Failure {
  final String message;

  const Failure(this.message);
}

// Ошибки сервера
class ServerFailure extends Failure {
  const ServerFailure([String? message]) : super(message ?? 'Ошибка сервера');
}

// Ошибки кэширования
class CacheFailure extends Failure {
  const CacheFailure([String? message]) : super(message ?? 'Ошибка кэширования');
}

// Ошибки сети
class NetworkFailure extends Failure {
  const NetworkFailure([String? message]) : super(message ?? 'Ошибка сети');
}

// Неизвестные ошибки
class UnknownFailure extends Failure {
  const UnknownFailure([String? message]) : super(message ?? 'Неизвестная ошибка');
}

// Ошибки валидации
class ValidationFailure extends Failure {
  const ValidationFailure([String? message]) : super(message ?? 'Ошибка валидации');
}
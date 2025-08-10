// Базовый класс для всех исключений приложения
abstract class AppException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const AppException(this.message, [this.stackTrace]);
}

// Ошибки сервера
class ServerException extends AppException {
  const ServerException([String? message, StackTrace? stackTrace])
      : super(message ?? 'Ошибка сервера', stackTrace);
}

// Ошибки кэширования
class CacheException extends AppException {
  const CacheException([String? message, StackTrace? stackTrace])
      : super(message ?? 'Ошибка кэширования', stackTrace);
}

// Ошибки парсинга
class ParsingException extends AppException {
  const ParsingException([String? message, StackTrace? stackTrace])
      : super(message ?? 'Ошибка парсинга данных', stackTrace);
}

// Ошибки сети
class NetworkException extends AppException {
  const NetworkException([String? message, StackTrace? stackTrace])
      : super(message ?? 'Нет подключения к интернету', stackTrace);
}

// Ошибки валидации
class ValidationException extends AppException {
  const ValidationException([String? message, StackTrace? stackTrace])
      : super(message ?? 'Ошибка валидации', stackTrace);
}
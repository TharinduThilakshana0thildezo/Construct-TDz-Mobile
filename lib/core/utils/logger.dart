import 'package:logger/logger.dart';

class AppLogger {
  factory AppLogger() {
    return _instance;
  }

  AppLogger._internal() {
    _logger = Logger(
      filter: ProductionFilter(),
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 5,
        lineLength: 75,
        colors: true,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
      ),
      output: ConsoleOutput(),
    );
  }
  static final AppLogger _instance = AppLogger._internal();
  late Logger _logger;

  void debug(String message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.d(message, error: error, stackTrace: stackTrace);

  void info(String message) => _logger.i(message);

  void warning(String message, [dynamic error]) =>
      _logger.w(message, error: error);

  void error(String message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace);

  void verbose(String message) => _logger.t(message);
}

class ProductionFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true; // Only log errors in production
  }
}

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    // Intentionally no-op for now; keep hook point for Crashlytics forwarding.
  }
}

final appLogger = AppLogger();

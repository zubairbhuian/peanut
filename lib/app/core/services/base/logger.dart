import 'package:logger/logger.dart';

class MyLogger {
  static late Logger logger;

  static Future<void> init() async {
    logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: false,
      ),
    );
  }
}

import 'package:logger/logger.dart';

Level loggerLevel = Level.trace;
Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    errorMethodCount: 5,
    lineLength: 90,
    colors: false,
    printEmojis: true,
    printTime: false,
  ),
  level: loggerLevel,
);

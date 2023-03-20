import 'package:flutter/services.dart';

class PlaygroundPlatformException extends PlatformException {
  PlaygroundPlatformException({required String message}) : super(code: '', message: message);

  @override
  String toString() => 'PlatformException: $message';
}
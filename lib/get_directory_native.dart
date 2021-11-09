
import 'dart:async';

import 'package:flutter/services.dart';

class GetDirectoryNative {
  static const MethodChannel _channel = MethodChannel('get_directory_native');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getDirectoryNative');
    return version;
  }
}

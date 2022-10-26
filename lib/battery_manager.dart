
import 'dart:async';

import 'package:flutter/services.dart';

class BatteryManager {
  static const MethodChannel _channel =
      const MethodChannel('battery_manager');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }



  // static get showAlertDialog async {
  //   await _channel.invokeMethod('showAlertDialog');
  // }

  static Future<String> getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await _channel.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level: $result%.';
    } on PlatformException {
      batteryLevel = 'Failed to get battery level.';
    }
    return batteryLevel;
  }
}


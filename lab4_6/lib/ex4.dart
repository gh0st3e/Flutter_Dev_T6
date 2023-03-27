import 'package:flutter/services.dart';

abstract class PlatformMethodChannel {
  Future<void> getBatteryLevel();
  Future<void> dialPhoneNumber(String phoneNumber);
  Future<bool> checkPermission(String permission);
}

class PlatformMethodChannelImpl extends PlatformMethodChannel {
  static const MethodChannel _channel = MethodChannel('platform_channels');

  @override
  Future<void> getBatteryLevel() async {
    try {
      final int batteryLevel = await _channel.invokeMethod('getBatteryLevel');
      print('Battery level: $batteryLevel%');
    } on PlatformException catch (e) {
      print('Error getting battery level: ${e.message}');
    }
  }

  @override
  Future<void> dialPhoneNumber(String phoneNumber) async {
    try {
      await _channel.invokeMethod('dialPhoneNumber', phoneNumber);
    } on PlatformException catch (e) {
      print('Error dialing phone number: ${e.message}');
    }
  }

  @override
  Future<bool> checkPermission(String permission) async {
    try {
      final bool hasPermission =
      await _channel.invokeMethod('checkPermission', permission);
      return hasPermission;
    } on PlatformException catch (e) {
      print('Error checking permission: ${e.message}');
      return false;
    }
  }
}
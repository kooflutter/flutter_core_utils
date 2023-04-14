import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_core_utils_platform_interface.dart';

/// An implementation of [FlutterCoreUtilsPlatform] that uses method channels.
class MethodChannelFlutterCoreUtils extends FlutterCoreUtilsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_core_utils');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

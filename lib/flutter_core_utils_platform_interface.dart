import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_core_utils_method_channel.dart';

abstract class FlutterCoreUtilsPlatform extends PlatformInterface {
  /// Constructs a FlutterCoreUtilsPlatform.
  FlutterCoreUtilsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCoreUtilsPlatform _instance = MethodChannelFlutterCoreUtils();

  /// The default instance of [FlutterCoreUtilsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCoreUtils].
  static FlutterCoreUtilsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCoreUtilsPlatform] when
  /// they register themselves.
  static set instance(FlutterCoreUtilsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

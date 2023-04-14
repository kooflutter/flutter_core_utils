
import 'flutter_core_utils_platform_interface.dart';

class FlutterCoreUtils {
  Future<String?> getPlatformVersion() {
    return FlutterCoreUtilsPlatform.instance.getPlatformVersion();
  }
}

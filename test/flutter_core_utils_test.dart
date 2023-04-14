import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_utils/flutter_core_utils.dart';
import 'package:flutter_core_utils/flutter_core_utils_platform_interface.dart';
import 'package:flutter_core_utils/flutter_core_utils_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreUtilsPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreUtilsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreUtilsPlatform initialPlatform = FlutterCoreUtilsPlatform.instance;

  test('$MethodChannelFlutterCoreUtils is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreUtils>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreUtils flutterCoreUtilsPlugin = FlutterCoreUtils();
    MockFlutterCoreUtilsPlatform fakePlatform = MockFlutterCoreUtilsPlatform();
    FlutterCoreUtilsPlatform.instance = fakePlatform;

    expect(await flutterCoreUtilsPlugin.getPlatformVersion(), '42');
  });
}

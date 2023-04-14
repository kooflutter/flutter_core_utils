#ifndef FLUTTER_PLUGIN_FLUTTER_CORE_UTILS_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_CORE_UTILS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_core_utils {

class FlutterCoreUtilsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterCoreUtilsPlugin();

  virtual ~FlutterCoreUtilsPlugin();

  // Disallow copy and assign.
  FlutterCoreUtilsPlugin(const FlutterCoreUtilsPlugin&) = delete;
  FlutterCoreUtilsPlugin& operator=(const FlutterCoreUtilsPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_core_utils

#endif  // FLUTTER_PLUGIN_FLUTTER_CORE_UTILS_PLUGIN_H_

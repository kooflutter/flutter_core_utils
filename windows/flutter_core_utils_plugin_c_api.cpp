#include "include/flutter_core_utils/flutter_core_utils_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_core_utils_plugin.h"

void FlutterCoreUtilsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_core_utils::FlutterCoreUtilsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

#include "include/sampleplugin/sampleplugin_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "sampleplugin_plugin.h"

void SamplepluginPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  sampleplugin::SamplepluginPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

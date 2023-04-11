import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sampleplugin_platform_interface.dart';

/// An implementation of [SamplepluginPlatform] that uses method channels.
class MethodChannelSampleplugin extends SamplepluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sampleplugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

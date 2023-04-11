import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sampleplugin_method_channel.dart';

abstract class SamplepluginPlatform extends PlatformInterface {
  /// Constructs a SamplepluginPlatform.
  SamplepluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static SamplepluginPlatform _instance = MethodChannelSampleplugin();

  /// The default instance of [SamplepluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelSampleplugin].
  static SamplepluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SamplepluginPlatform] when
  /// they register themselves.
  static set instance(SamplepluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

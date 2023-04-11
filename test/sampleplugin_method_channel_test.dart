import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sampleplugin/sampleplugin_method_channel.dart';

void main() {
  MethodChannelSampleplugin platform = MethodChannelSampleplugin();
  const MethodChannel channel = MethodChannel('sampleplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

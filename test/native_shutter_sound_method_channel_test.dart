import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_shutter_sound/native_shutter_sound_method_channel.dart';

void main() {
  MethodChannelNativeShutterSound platform = MethodChannelNativeShutterSound();
  const MethodChannel channel = MethodChannel('native_shutter_sound');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('play', () async {
    await platform.play();
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:native_shutter_sound/native_shutter_sound_platform_interface.dart';
import 'package:native_shutter_sound/native_shutter_sound_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeShutterSoundPlatform
    with MockPlatformInterfaceMixin
    implements NativeShutterSoundPlatform {
  @override
  Future<void> play() => Future.value();
}

void main() {
  final NativeShutterSoundPlatform initialPlatform =
      NativeShutterSoundPlatform.instance;

  test('$MethodChannelNativeShutterSound is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeShutterSound>());
  });
}

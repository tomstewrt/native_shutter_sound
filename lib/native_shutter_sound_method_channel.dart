import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_shutter_sound_platform_interface.dart';

/// An implementation of [NativeShutterSoundPlatform] that uses method channels.
class MethodChannelNativeShutterSound extends NativeShutterSoundPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_shutter_sound');

  @override
  Future<void> play() {
    return methodChannel.invokeMethod<void>('play');
  }
}

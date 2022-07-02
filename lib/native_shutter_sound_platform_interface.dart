import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_shutter_sound_method_channel.dart';

abstract class NativeShutterSoundPlatform extends PlatformInterface {
  /// Constructs a NativeShutterSoundPlatform.
  NativeShutterSoundPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeShutterSoundPlatform _instance =
      MethodChannelNativeShutterSound();

  /// The default instance of [NativeShutterSoundPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeShutterSound].
  static NativeShutterSoundPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeShutterSoundPlatform] when
  /// they register themselves.
  static set instance(NativeShutterSoundPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> play() {
    throw UnimplementedError('play() has not been implemented.');
  }
}

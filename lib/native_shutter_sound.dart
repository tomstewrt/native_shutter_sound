import 'native_shutter_sound_platform_interface.dart';

class NativeShutterSound {
  static Future<void> play() {
    return NativeShutterSoundPlatform.instance.play();
  }
}

# native_shutter_sound

A simple flutter plugin, that lets you play the native shutter sound for iOS and Android.

This plugin can be useful if you develop a custom camera screen, and you want to play the default shutter sound you get when you take a photo using the camera app on the device.

## Getting Started

First, add `native_shutter_sound` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

### Example

``` dart
import 'package:native_shutter_sound/native_shutter_sound.dart';
    ...
    ElevatedButton(
        onPressed: () {
            NativeShutterSound.play();
        },
        child: const Text('Play Sound'),
    )
    ...
```

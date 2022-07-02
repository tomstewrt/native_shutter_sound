#import "NativeShutterSoundPlugin.h"
#if __has_include(<native_shutter_sound/native_shutter_sound-Swift.h>)
#import <native_shutter_sound/native_shutter_sound-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_shutter_sound-Swift.h"
#endif

@implementation NativeShutterSoundPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeShutterSoundPlugin registerWithRegistrar:registrar];
}
@end

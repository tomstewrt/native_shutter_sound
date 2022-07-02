import Flutter
import UIKit
import AVFoundation

public class SwiftNativeShutterSoundPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_shutter_sound", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeShutterSoundPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if #available(iOS 9.0, *) {
          AudioServicesPlaySystemSoundWithCompletion(SystemSoundID(1108), nil)
      } else {
          AudioServicesPlaySystemSound(1108)
      }
  }
}

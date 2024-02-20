package htmhell.native_shutter_sound.native_shutter_sound

import android.media.MediaActionSound
import android.content.Context
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** NativeShutterSoundPlugin */
class NativeShutterSoundPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var context: Context
  val audioManager = getSystemService(Context.AUDIO_SERVICE) as AudioManager

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "native_shutter_sound")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    if (call.method == "play") {
      // Get the current volume level for the media stream
      val currentVolume = audioManager.getStreamVolume(AudioManager.STREAM_MUSIC)
      // Set the volume level for the media stream to the same value and show the volume UI
      audioManager.setStreamVolume(AudioManager.STREAM_MUSIC, currentVolume, 0)
      val sound = MediaActionSound()
      sound.play(MediaActionSound.SHUTTER_CLICK)
      // Optionally, restore the volume level for the media stream to the original value
      // audioManager.setStreamVolume(AudioManager.STREAM_MUSIC, originalVolume, 0)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}

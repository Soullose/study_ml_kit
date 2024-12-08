import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'study_ml_kit_platform_interface.dart';

/// An implementation of [StudyMlKitPlatform] that uses method channels.
class MethodChannelStudyMlKit extends StudyMlKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('study_ml_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

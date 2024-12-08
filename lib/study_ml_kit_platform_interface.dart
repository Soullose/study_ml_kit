import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'study_ml_kit_method_channel.dart';

abstract class StudyMlKitPlatform extends PlatformInterface {
  /// Constructs a StudyMlKitPlatform.
  StudyMlKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static StudyMlKitPlatform _instance = MethodChannelStudyMlKit();

  /// The default instance of [StudyMlKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelStudyMlKit].
  static StudyMlKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StudyMlKitPlatform] when
  /// they register themselves.
  static set instance(StudyMlKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

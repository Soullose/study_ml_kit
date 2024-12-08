
import 'study_ml_kit_platform_interface.dart';

class StudyMlKit {
  Future<String?> getPlatformVersion() {
    return StudyMlKitPlatform.instance.getPlatformVersion();
  }
}

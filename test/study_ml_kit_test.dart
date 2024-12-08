import 'package:flutter_test/flutter_test.dart';
import 'package:study_ml_kit/study_ml_kit.dart';
import 'package:study_ml_kit/study_ml_kit_platform_interface.dart';
import 'package:study_ml_kit/study_ml_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStudyMlKitPlatform
    with MockPlatformInterfaceMixin
    implements StudyMlKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final StudyMlKitPlatform initialPlatform = StudyMlKitPlatform.instance;

  test('$MethodChannelStudyMlKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStudyMlKit>());
  });

  test('getPlatformVersion', () async {
    StudyMlKit studyMlKitPlugin = StudyMlKit();
    MockStudyMlKitPlatform fakePlatform = MockStudyMlKitPlatform();
    StudyMlKitPlatform.instance = fakePlatform;

    expect(await studyMlKitPlugin.getPlatformVersion(), '42');
  });
}

import 'package:get/get.dart';

import '../controllers/scanned_screen_controller.dart';

class ScannedScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScannedScreenController>(
      () => ScannedScreenController(),
    );
  }
}

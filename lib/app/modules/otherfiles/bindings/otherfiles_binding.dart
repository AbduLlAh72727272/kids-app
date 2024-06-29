import 'package:get/get.dart';

import '../controllers/otherfiles_controller.dart';

class OtherfilesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherfilesController>(
      () => OtherfilesController(),
    );
  }
}

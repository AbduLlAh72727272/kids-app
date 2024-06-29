import 'package:get/get.dart';

import '../controllers/admin_support_controller.dart';

class AdminSupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminSupportController>(
      () => AdminSupportController(),
    );
  }
}

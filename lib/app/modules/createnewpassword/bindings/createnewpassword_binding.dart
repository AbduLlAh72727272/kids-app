import 'package:get/get.dart';

import '../controllers/createnewpassword_controller.dart';

class CreatenewpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatenewpasswordController>(
      () => CreatenewpasswordController(),
    );
  }
}

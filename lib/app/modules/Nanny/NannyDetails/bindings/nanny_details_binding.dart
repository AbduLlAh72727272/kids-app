import 'package:get/get.dart';

import '../controllers/nanny_details_controller.dart';

class NannyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NannyDetailsController>(
      () => NannyDetailsController(),
    );
  }
}

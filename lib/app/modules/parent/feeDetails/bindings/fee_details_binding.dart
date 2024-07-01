import 'package:get/get.dart';

import '../controllers/fee_details_controller.dart';

class FeeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeeDetailsController>(
      () => FeeDetailsController(),
    );
  }
}

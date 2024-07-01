import 'package:get/get.dart';

import '../controllers/nanny_home_page_controller.dart';

class NannyHomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NannyHomePageController>(
      () => NannyHomePageController(),
    );
  }
}

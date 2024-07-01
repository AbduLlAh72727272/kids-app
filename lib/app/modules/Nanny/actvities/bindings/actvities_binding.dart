import 'package:get/get.dart';

import '../controllers/actvities_controller.dart';

class ActvitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActvitiesController>(
      () => ActvitiesController(),
    );
  }
}
